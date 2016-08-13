class Business < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :flights

  validates :name, :location, :rating, presence: true

  geocoded_by :location
  after_validation :geocode

  def curate_flight(theme)
    new_flight = self.flights.create(name: Faker::Hipster.word, theme: theme)
    businesses_around_self = Business.where(theme: theme).near(self, 50)
    i = 1 #Set index start as 1 because association always contains starting_biz at index 0
    2.times do |thing|
      new_flight.businesses << businesses_around_self[i]
      i += 1
    end
    new_flight
  end
end
