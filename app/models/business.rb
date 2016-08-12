class Business < ActiveRecord::Base
  has_many :flights
  belongs_to :leading_business

  validates :name, :location, :rating, presence: true
end
