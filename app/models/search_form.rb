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

  private
  def self.distance_array(min, max)
    distance_array = [0, 2.5, 5, 7.5]
    range = Range.new(min, max)
    range.each { |num| distance_array << num  if num >= 10 && num % 5 == 0 }
    distance_array
  end

end
