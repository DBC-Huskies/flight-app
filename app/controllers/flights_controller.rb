class FlightsController < ApplicationController

  def search
    @search = SearchForm.new
  end

  def search_results
    @search = SearchForm.new(search_params)
    if @search.valid?
      @flights = @search.generate_flights
    else
      #rerender the search template
      render :search
    end
  end

  def show
    # if the user refreshes the search/results page
    redirect_to '/search'
  end

  private
  def search_params
    params.require(:search_form).permit(:location, :beverage, :distance)
  end

end
