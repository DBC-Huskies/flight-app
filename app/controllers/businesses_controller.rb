class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    p @business.beverage
    p @business.get_theme

    if @business.save
      redirect_to '/flights/search'
    else
      render 'new'
    end
  end

  private
  def business_params
    params.require(:business).permit(:name, :location, :beverage)
  end

end
