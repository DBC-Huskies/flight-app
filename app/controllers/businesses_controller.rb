class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.location= convert_address
    @business.google_place_id= @business.retrieve_google_place_id

    if @business.save
      flash[:notice] = "Thank you for adding your favorite local business to our growing list available for others to enjoy."
      redirect_to user_path(session[:user_id])
    else
      render 'new'
    end
  end

  def show
    @business = Business.find(params[:id])
    @details = @business.lookup_place_details
  end

  private
  def business_params
    params.require(:business).permit(:name, :street, :city, :state, :beverage)
  end

  def convert_address
    [business_params[:street], business_params[:city], business_params[:state]].join(', ')
  end
end
