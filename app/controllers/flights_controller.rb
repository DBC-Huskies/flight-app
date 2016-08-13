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
    @businesses = Business.all

    render :show
  end

  private
  def search_params
    params.require(:search_form).permit(:location, :beverage, :distance)
  end

end
