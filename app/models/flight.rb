class Flight < ActiveRecord::Base
  before_validation :set_name
  after_create :update_name

  enum theme: { wine: 0, beer: 1, distillery: 2, coffee: 3 }

  has_and_belongs_to_many :businesses
  has_and_belongs_to_many :users

  validates :name, presence: true, uniqueness: true


  def set_name
    if self.name.nil? || self.name.empty?
      self.name= "Flight no. __ID__"
    end
  end

  def update_name
    if self.name == "Flight no. __ID__"
      update_attribute(:name, "Flight no. #{self.id}")
    end
  end


end
