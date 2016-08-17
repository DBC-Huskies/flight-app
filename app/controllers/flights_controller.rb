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

      if @search.valid?
        @flights = @search.generate_flights
        p @flights
        if request.xhr?
          render :'flights/search_results', layout: false
        else
          render :'flights/search_results'
        end
      else
        @errors = @search.errors
        if request.xhr?
          content_type :json
          # Add logic to make sure we pass
          # the right data to display the error messages on the search page
          @errors.to_json
        else
          render :'flights/search'
        end
      end

  end

  def show
    @flight = Flight.find(params[:id])
    if request.xhr?
      render :'flights/show', layout: false
    else
      render :'flights/show'
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
