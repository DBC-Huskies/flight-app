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
    distance_array( 0, 50)
  end

  validates_presence_of :location, :beverage, :distance

  # def get_biz_within_distance
    # Business.near(self.location, self.distance)
  # end

  # def get_themed_biz(biz_collection)
  # Smth like this.
    # case self.beverage
    # case 'Wine'
      # biz_collection.wine
    # case 'Beer'
      # biz_collection.beer
    # case 'Whiskey'
      # biz_collection.whiskey
    # case 'Coffee'
      # biz_collection.coffee
    # end
  # end

  def generate_flights
    # returns a collection of flights based on search params
    case @beverage
    when 'Wine'
      enum =
    when 'Beer'
    when 'Whiskey'
    when 'Coffee'
    end

    p Business.where(theme: 2).near(@location, @distance)

    # Steps:
    # get businesses within the given distance
        # biz_within_distance = get_biz_within_distance(possible_flights)
    # get the list of businesses that have needed beverage category
        # themed_biz_collection = search.get_themed_biz(biz_within_distance)
    # rank the businesses by the ratings

    # select 5 leading businesses

    # create 5 flights with 5 businesses inside a flight around the leading business

    []
  end

  private
  def self.distance_array(min, max)
    distance_array = [0, 2.5, 5, 7.5]
    range = Range.new(min, max)
    range.each { |num| distance_array << num  if num >= 10 && num % 5 == 0 }
    distance_array
  end

end
