class SessionsController < ApplicationController

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end

  def new
    @login = LoginForm.new
  end

  def create
    @login = LoginForm.new(login_params)
    if @login.valid?
    else
      render :'sessions/new'
    end
  end

  private

  def login_params
    params.require(:login).permit(:usenrame, :password)
  end

end
