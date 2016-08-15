class Business < ActiveRecord::Base
  enum theme: { wine: 0, beer: 1, whiskey: 2, coffee: 3 }

  has_and_belongs_to_many :flights

  validates :name, :location, presence: true

  geocoded_by :location
  after_validation :geocode

  def curate_flight(theme)
    new_flight = self.flights.create(name: Faker::Hipster.word, theme: theme)
    businesses_around_self = Business.where(theme: theme).near(self, 50)
    i = 1 #Set index start as 1 because association always contains starting_biz at index 0
    2.times do |thing|
      new_flight.businesses << businesses_around_self[i]
      i += 1
    end
    new_flight
  end


  def leading_business
    # return a list of businesses matching search params
    # order businesses based on rating
    # select highest rated business to build flight around
      # set this business location to center of map
      # include leading business in flight


# selects nearby businesses within 2 miles
leading_business.nearbys(2)

@businesses = Business.near(leading_business, 2, :order => :rating)



# gets businesses from certain theme and orders based on rank
Business.where(theme: 0).order(rating: :desc)

leading_business = Business.where(theme: 0).order(rating: :desc).first
  end




end
