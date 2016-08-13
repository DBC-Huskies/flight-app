class Flight < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_many :businesses
  belongs_to :leading_business

  validates :name, presence: true, uniqueness: true
end
