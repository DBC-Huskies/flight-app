class FlightsController < ApplicationController

  def search
    @search = SearchForm.new
  end

  def search_results
    @search = SearchForm.new(search_params)
    if @search.valid?
      @flights = @search.generate_flights
      render :'flights/search_results'
    else
      #rerender the search template
      render :'flights/search'
    end
  end


  def show
    @flight = Flight.find(params[:id])

    render :'flights/show'
  end

  private
  def search_params
    params.require(:search_form).permit(:location, :beverage, :distance)
  end

end
