class Business < ActiveRecord::Base
  has_many :flights
  belongs_to :flight

  validates :name, :location, :rating, presence: true
end
