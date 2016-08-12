class Flight < ActiveRecord::Base
  has_many :businesses
  belongs_to :leading_business

  validates :name, presence: true, uniqueness: true
end
