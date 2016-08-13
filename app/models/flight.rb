class Flight < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :businesses

  validates :name, presence: true, uniqueness: true

  def curate_flight
    businesses_around_start = Business.where(theme: self.theme).near(self.businesses.first, 10)
    businesses_around_start.delete(self.businesses.first) if businesses_around_start[0] == self.businesses.first
    self.businesses << businesses_around_start.take(2)
  end

end
