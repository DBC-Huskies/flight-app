class RatingsController < ApplicationController
  def new
    @rating = Business.find(params[:business_id]).ratings.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.business = Business.find(params['business_id'])
    @rating.author = User.find(session[:user_id])
    if @rating.save
      session[:flash] = "Thank you for submitting a rating!"
      redirect_to user_path(session[:user_id])
    else
      render :'ratings/new'
    end
  end

  private

  def rating_params
    params.require(:rating).permit('value')
  end
end
