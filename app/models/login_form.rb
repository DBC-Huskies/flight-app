class LoginForm
  include ActiveModel::Model

  attr_reader :username, :password

  validates_presence_of :username, :password

end
