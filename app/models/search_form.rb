class SearchForm # https://robots.thoughtbot.com/activemodel-form-objects
  include ActiveModel::Model

  attr_accessor :location, :beverage, :distance

  validates_presence_of :beverage, :distance
  validates_presence_of :location, allow_blank: false, message: "Enter the start location of your adventure!"

  def self.beverage_options
    ['Wine', 'Beer', 'Whiskey', 'Coffee']
  end

  def self.distance_options
    distance_array(2, 50)
  end

  def generate_flights
    enum = get_theme_enum(@beverage)
    p "This is the leading business"
    p leading_business = get_leading_business(@location, enum, @distance)
    # p "This is the leading business location"
    # p start_location = leading_business.location
    p "These are possible businesses near the leading business"
    p surrounding_businesses = Business.where(theme: beverage).near(leading_business, 1, :order => {rating: :desc})

    flights = []
    surrounding_businesses.each do |business|
      p "Hello"
      p new_flight = business.curate_flight(enum)
      p flights << new_flight
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

  def get_leading_business(location, beverage, distance)
    p "BUSINESSES"
    p businesses = Business.where(theme: beverage).order(rating: :desc).near(location, distance)
    leading_business = businesses.first
    return leading_business
  end

  # def get_possible_businesses(location, beverage, distance)
  #   Business.where(theme: beverage).near(location, distance)
  # end

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
