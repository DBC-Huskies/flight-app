class Business < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_many :flights
  belongs_to :flight

  validates :name, :location, :rating, presence: true
end
