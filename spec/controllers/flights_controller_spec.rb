require 'rails_helper'

describe FlightsController do
  describe "GET #index" do
    before(:each) do
      get :index
    end
    it 'redirects to search_results_flights_path and responds with a status of 302' do
      expect(response.status).to eq(302)
    end
  end
end
