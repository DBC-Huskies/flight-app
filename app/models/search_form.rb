class SearchForm # https://robots.thoughtbot.com/activemodel-form-objects
  include ActiveModel::Model

  attr_accessor :location, :beverage, :distance

  validates_presence_of :beverage, :distance
  validates_presence_of :location, allow_blank: false, message: "Enter the start location of your adventure!"

  def self.beverage_options
    ['Wine', 'Beer', 'Distillery', 'Coffee']
  end

  def self.distance_options
    distance_array(2, 50)
  end

  def generate_flights
    enum = get_theme_enum(@beverage)
    leading_businesses = get_leading_businesses(@location, enum, @distance)

    flights = []
    leading_businesses.each do |business|
      new_flight = business.curate_flight(enum)
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

  def get_leading_businesses(location, beverage, distance)
    businesses = Business.limit(3).where(theme: beverage).order(average_rating: :desc).near(location, distance)
  end

  def get_theme_enum(beverage)
    case beverage
    when 'Wine', 'wine'
      0
    when 'Beer', 'beer'
      1
    when 'Distillery', 'distillery'
      2
    when 'Coffee', 'coffee'
      3
    end
  end

end
