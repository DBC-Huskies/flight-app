class Flight < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :businesses

  validates :name, presence: true, uniqueness: true

  def curate_flight
    p 'made it here'
  end

end
