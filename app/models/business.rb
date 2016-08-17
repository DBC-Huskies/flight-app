class Business < ActiveRecord::Base
  before_save :set_theme
  attr_accessor :beverage, :street, :city, :state,:rating

  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :flights
  has_many :ratings

  validates :name, :location, presence: true
  validates :street, :city, presence: true, on: :create
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

  def retrieve_google_place_id
    client = GooglePlaces::Client.new(ENV['MAP_KEY'])
    spots = client.spots_by_query("#{self.name}, #{self.location}")
    if spots.empty?
      self.google_place_id= nil
    else
      self.google_place_id= spots[0].place_id
    end
  end

  def lookup_place_details
    client = GooglePlaces::Client.new(ENV['MAP_KEY'])
    if self.google_place_id == nil
      nil
    else
      client.spot(self.google_place_id)
    end

  def average_rating
    values = self.ratings.reload.map do |rating|
      rating.value
    end
    average = values.reduce(:+) / values.size.to_f
    average.round
  end

  def update_rating
    self.rating = self.average_rating
    self.save!
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
