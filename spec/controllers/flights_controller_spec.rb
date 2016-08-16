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

  describe 'GET #search' do

    describe 'HTTP requests' do

      before(:each) do
        get :search
      end

      it 'assigns an empty login form' do
        expect(assigns(:search)).to be_a SearchForm
      end

      it 'renders the search form page' do
        expect(response).to render_template :search
      end

    end

    describe 'AJAX requests' do

      before(:each) do
        xhr :get, :search
      end

      it 'renders the search form page' do
        expect(response).to render_template :search
      end

    end

  end

  describe 'POST #search_results' do

    describe 'HTTP requests' do

      before(:each) do
        get :search_results
      end

      context 'with valid data' do

      end

      context 'with invalid data' do

      end

    end

    describe 'AJAX requests' do

      before(:each) do
        xhr :post, :search_results
      end

      context 'with valid data' do

      end

      context 'with invalid data' do

      end

    end

  end

  describe 'GET #show' do

    let!(:new_flight) { Flight.create(name: "Best Flight EVER", theme: 1) }

    describe 'HTTP requests' do

      before(:each) do
        get :show, id: new_flight.id
      end

      it '' do

      end

    end

    describe 'AJAX requests' do

      before(:each) do
        xhr :get, :show, id: new_flight.id
      end

      it '' do

      end

    end

  end

end
