class FlightsController < ApplicationController

  def index
    redirect_to search_flights_path
  end

  def search
    @search = SearchForm.new
    if request.xhr?
      render :'flights/search', layout: false
    end
  end

  def search_results
    @search = SearchForm.new(search_params)
    @theme_name = @search.beverage.downcase

      if @search.valid?
        @flights = @search.generate_flights
        if request.xhr?
          render :'flights/search', layout: false
        else
          render :'flights/search_results'
        end
      else
        @errors = @search.errors
        if request.xhr?
          render :'flights/search', :layout => false, :status => :unprocessable_entity
        else
          render :'flights/search'
        end
      end

  end

  def show
    if params[:id] == 'search_results'
      redirect_to search_flights_path
    else
      @flight = Flight.find(params[:id])
      @theme_name = @flight.theme
      if request.xhr?
        render :'flights/show', layout: false
      else
        render :'flights/show'
      end
    end
  end

  def bookmark
    bookmark_flight(session[:user_id], params[:id])
    redirect_to user_path(session[:user_id])
  end

  private

  def search_params
    params.require(:search_form).permit(:location, :beverage, :distance)
  end

  def bookmark_flight(user_id, flight_id)
    user = User.find(user_id)
    flight = Flight.find(flight_id)
    user.flights << flight
  end

end
