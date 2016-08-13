class SearchForm # https://robots.thoughtbot.com/activemodel-form-objects
  include ActiveModel::Model

  attr_accessor :location, :beverage, :distance

  validates_presence_of :location, :beverage, :distance

  def self.beverage_options
    [ 'Wine', 'Beer', 'Whiskey', 'Coffee']
  end

  def self.distance_options
    distance_array(2, 50)
  end

  def generate_flights
    enum = get_theme_enum(@beverage)
    surrounding_businesses = get_surrounding_business(@location, enum, @distance)
    flights = []

    surrounding_businesses.each do |business|
      new_flight = Flight.create(name: Faker::Hipster.sentence, theme: enum)
      new_flight.businesses << business
      new_flight.curate_flight
      flights << new_flight
    end

    flights
  end

  private

  def self.distance_array(min, max)
    distance_array = [2.5, 5, 7.5]
    range = Range.new(min, max)
    range.each { |num| distance_array << num  if num >= 10 && num % 5 == 0 }
    distance_array
  end

  def get_surrounding_business(location, beverage, distance)
    Business.where(theme: beverage).near(location, distance)
  end

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
