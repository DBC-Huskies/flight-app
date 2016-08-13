class Flight < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :businesses

  validates :name, presence: true, uniqueness: true

  def curate_flight
    starting_biz = self.businesses.first
    flight_theme_int = get_theme_enum(self.theme)
    businesses_around_start = Business.where(theme: flight_theme_int).near(starting_biz, 50)
    i = 1 #Set index start as 1 because association always contains starting_biz at index 0
    3.times do |thing|
      self.businesses << businesses_around_start[i]
      i += 1
    end
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
