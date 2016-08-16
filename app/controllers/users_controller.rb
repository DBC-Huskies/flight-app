class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(get_user_params)
    # if @user.valid?
    #   redirect_to user_path
    # else
    #   render :'users/new'
    # end
  end

  def show
  end

  private

  def get_user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
