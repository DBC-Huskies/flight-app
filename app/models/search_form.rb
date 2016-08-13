class SearchForm # https://robots.thoughtbot.com/activemodel-form-objects

  include ActiveModel::Model

  attr_accessor(
    :location,
    :beverage,
    :distance
    )
  def self.beverage_options
    [ 'Wine', 'Beer', 'Whiskey', 'Coffee']
  end

  def self.distance_options
    distance_array(2, 50)
  end

  validates_presence_of :location, :beverage, :distance


  def generate_flights
    enum = get_theme_enum(@beverage)
    surrounding_businesses = get_surrounding_business(@location, enum, @distance)
    flights = []

    i = 1
    surrounding_businesses.each do |business|
      new_flight = business.flights.new(name: "Flight #{i}", theme: enum)
      new_flight.curate_flight
      flights << new_flight
      i += 1
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
    when 'Wine'
      0
    when 'Beer'
      1
    when 'Whiskey'
      2
    when 'Coffee'
      3
    end
  end

end
