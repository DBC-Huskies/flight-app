class PagesController < ApplicationController
  def index
    @skip_header = true
  end

  def test
     @search = SearchForm.new
     @flights = Flight.all.limit(3)
     @flight = @flights.first
  end


end
