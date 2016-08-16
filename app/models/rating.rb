class Rating < ActiveRecord::Base
  belongs_to :business
  belongs_to :author, class_name: "User"


  validates :value,
    :inclusion  => { :in => [ 1, 2, 3, 4, 5 ],
    :message    => "%{value} is not a valid rating" }

end
