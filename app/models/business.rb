class Business < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :flights

  validates :name, :location, presence: true

  geocoded_by :location
  after_validation :geocode

  def curate_flight(theme)
    new_flight = self.flights.create(name: Faker::Hipster.sentence, theme: theme)
    businesses_around_self = Business.where(theme: theme).order(rating: :desc).near(self, 5).to_a
    businesses_around_self.delete(self)
    i = 0
    2.times do |thing|
      new_flight.businesses << businesses_around_self[i]
      i += 1
    end
    new_flight
  end
end
