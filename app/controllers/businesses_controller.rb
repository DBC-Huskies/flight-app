class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)

    address_array = [business_params[:street], business_params[:city], business_params[:state]]
    @business.location= address_array.join(', ')

    if @business.save
      flash[:notice] = "Thank you for adding your favorite local business to our growing list available for others to enjoy."
      redirect_to '/flights/search'
    else
      render 'new'
    end
  end

  private
  def business_params
    params.require(:business).permit(:name, :street, :city, :state, :beverage)
  end

end
