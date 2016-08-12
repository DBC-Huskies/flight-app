class SearchForm # https://robots.thoughtbot.com/activemodel-form-objects

  include ActiveModel::Model

  after_initialize :init

  attr_accessor(
    :location,
    :beverage,
    :distance
    )

  def init
    self.beverage = [ 'Wine', 'Beer', 'Whiskey', 'Coffee']
    self.distance = distance_array
  end

  validates_presence_of :location, :beverage, :distance

  private
  # def distance_array
  #   distance_array = Array.new
  #   range = Xs.new(1)..Xs.new(50)
  #   range.each do |num|
  #     if num <= 10
  #       range.step(2.5) {|x| distance_array << x}
  #     else
  #       range.step(5) {|x| distance_array << x}
  #     end
  #   end
  #   distance_array
  # end

end
