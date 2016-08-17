class User < ActiveRecord::Base
  has_many :ratings, foreign_key: 'author_id'
  has_and_belongs_to_many :flights

  validates :username, presence: true, uniqueness: true
  validates :password, length: { :minimum => 4}

  has_secure_password
end
