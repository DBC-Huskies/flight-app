class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    p [business_params[:street], business_params[:city], business_params[:state]].join(', ')
    @business.location=([business_params[:street], business_params[:city], business_params[:state]])
    if @business.save
      redirect_to 'flights/create'
    else
      render 'new'
    end
  end

  private
  def business_params
    params.require(:business).permit(:name, :street, :city, :state, :beverage)
  end

end
