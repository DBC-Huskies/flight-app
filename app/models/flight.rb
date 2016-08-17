class Flight < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :businesses
  has_and_belongs_to_many :users

  validates :name, presence: true, uniqueness: true

end
