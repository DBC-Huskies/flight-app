class FlightsController < ApplicationController
  def index
    redirect_to search_flights_path
  end

  def search
    @search = SearchForm.new
  end

  def search_results
    @search = SearchForm.new(search_params)

    if @search.valid?
      @flights = @search.generate_flights
      render :'flights/search_results'
    else
      @errors = @search.errors
      #rerender the search template
      render :'flights/search'
    end
  end

  def show
    if params[:id] == 'search_results'
      @search = SearchForm.new
      if @search.valid?
        @flights = @search.generate_flights
        render :'flights/search_results'
      else
        #rerender the search template
        render :'flights/search'
      end
    else
      @flight = Flight.find(params[:id])
      render :'flights/show'
    end
  end

  private

  def search_params
    params.require(:search_form).permit(:location, :beverage, :distance)
  end

end
