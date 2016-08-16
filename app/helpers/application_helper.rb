module ApplicationHelper
  def set_user_session(user_id)
    session[:user_id] = user_id
  end

  def end_user_session
    session[:user_id] = nil
  end
end
