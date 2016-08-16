class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      redirect_to 'flights/create'
    else
      render 'new'
    end
  end

  private
  def business_params
    params.require(:business).permit(:name, :location, :beverage)
  end

end
