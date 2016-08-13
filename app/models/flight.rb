class Flight < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :businesses

  validates :name, presence: true, uniqueness: true

  def curate_flight
    starting_biz = self.businesses.first
    flight_theme_int = get_theme_enum(self.theme)
    businesses_around_start = Business.where(theme: flight_theme_int).near(starting_biz, 50)
    businesses_around_start.delete(starting_biz)
    self.businesses << businesses_around_start.take(2)
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
