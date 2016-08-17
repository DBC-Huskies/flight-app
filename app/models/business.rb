class Business < ActiveRecord::Base
  before_save :set_theme
  attr_accessor :beverage, :street, :city, :state

  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :flights

  has_many :ratings

  validates :name, :street, :city, :location, presence: true
  validates :name, uniqueness: true

  geocoded_by :location
  after_validation :geocode


  def self.beverage_options
    ['Wine', 'Beer', 'Whiskey', 'Coffee']
  end

  def get_theme
    get_theme_enum(self.beverage)
  end

  def set_theme
    self.theme = get_theme
  end

  def curate_flight(theme)
    new_flight = self.flights.create(name: "Flight no. #{Flight.last.id + 1}", theme: theme)
    businesses_around_self = Business.where(theme: theme).order(rating: :desc).near(self, 5).to_a
    businesses_around_self.delete(self)
    i = 0
    2.times do |thing|
      new_flight.businesses << businesses_around_self[i]
      i += 1
    end
    new_flight
  end

  # if self.ratings.count >= 1 change default to average rating
  # method that updates the rating

  def average_rating
    ratings_array = [ self.rating ]
    self.ratings.each do |rating|
      ratings_array << rating.value
    end
    average = ratings_array.reduce(:+) / ratings_array.size.to_f
    return average.round
  end

  private
  def get_theme_enum(beverage)
    case beverage
    when 'Wine', 'wine'
      0
    when 'Beer', 'beer'
      1
    when 'Whiskey', 'whiskey'
      2
    when 'Coffee', 'coffee'
      3
    end
  end
end
