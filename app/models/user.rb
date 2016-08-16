class User < ActiveRecord::Base
  has_many :ratings, foreign_key: 'author_id'

  validates :username, presence: true, uniqueness: true
  validates :password, length: { :minimum => 4}

  has_secure_password
end
