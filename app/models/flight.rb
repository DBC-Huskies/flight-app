class Flight < ActiveRecord::Base
  has_many :businesses

  validates :name, presence: true, uniqueness: true
end
