class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(get_user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :'users/new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def get_user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
