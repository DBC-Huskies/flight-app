class Business < ActiveRecord::Base
  attr_accessor :beverage, :street, :city, :state, :rating

  before_validation :convert_address

  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :flights
  has_many :ratings

  validates :name, :location, presence: true
  validates :street, :city, :state, presence: true, :unless => :has_location?

  validates :name, uniqueness: true

  geocoded_by :location
  after_validation :geocode


  def self.beverage_options
    self.themes.keys.to_a.map do |key|
      [key.titlecase, key ]
    end
  end

  def curate_flight(theme)
    new_flight = self.flights.create!(theme: theme)
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

  def has_location?
    !!self.location
  end

 def convert_address
    unless has_location?
      if self.street && !self.street.empty? && self.city && !self.city.empty? && self.state && !self.state.empty?
        self.location= "#{self.street}, #{self.city}, #{self.state}"
      end
    end
  end

end
