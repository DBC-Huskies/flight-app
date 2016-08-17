class Rating < ActiveRecord::Base
  belongs_to :business
  belongs_to :author, class_name: "User"

  validates :value,
    :inclusion  => { :in => [ 1, 2, 3, 4, 5 ],
    :message    => "%{value} is not a valid rating" }

  after_save :update_business_rating_attribute

  validates_uniqueness_of :author_id, :scope => :business_id, message: 'You have already rated this business'

  # validate :rating_already_given_by_user, :on => :create

  # def rating_already_given_by_user
  #   if user_gave_rating_to_biz
  #     errors.add(:repeate_rating, 'This user already gave a rating to this business')
  #   end
  # end

  # def user_gave_rating_to_biz
  #   potential_business = self.business
  #   author_user = self.author
  #     if Rating.find_by( {author: author_user, business: potential_business} )
  #       true
  #     else
  #       false
  #     end
  # end

  def update_business_rating_attribute
    self.business.update_rating
  end

end
