class User < ActiveRecord::Base
  has_many :ratings, foreign_key: 'author_id'
  has_and_belongs_to_many :flights

  validates_presence_of :username, uniqueness: true, allow_blank: false, message: "Enter a username."
  validates :password, length: { :minimum => 4}
  validates_presence_of :password_confirmation, allow_blank: false, message: "Confirm your password."

  has_secure_password
end
