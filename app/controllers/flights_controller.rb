class FlightsController < ApplicationController

  def search
    @search = SearchForm.new
  end

  def search_results
    @search = SearchForm.new(search_params)

    @flights = @search.search
  end
  private
  def search_params
    params.require(:search_form).permit(:location, :beverage, :distance)
  end

end
