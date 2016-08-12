class FlightsController < ApplicationController

  def search
    @search = SearchForm.new
  end

  private
  def search_params
    params.require(:searchForm).permit(:location, :beverage, :distance)
  end

end
