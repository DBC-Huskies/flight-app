class Business < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :flights

  validates :name, :location, :rating, presence: true

  geocoded_by :location
  after_validation :geocode
end
