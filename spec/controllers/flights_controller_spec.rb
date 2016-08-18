require 'rails_helper'

describe FlightsController do

  describe "GET #index" do

    before(:each) do
      get :index
    end

    it 'redirects to search results' do
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

      context 'with valid data' do

        before(:each) do
          post :search_results, search_form: {location: "Seattle, WA", beverage: "Beer", distance: 5}
        end

        it 'renders the results page' do
          expect(response).to render_template :search_results
        end

      end

      context 'with invalid data' do

        before(:each) do
          post :search_results, search_form: {location: "", beverage: "Beer", distance: 5}
        end

        it 'render the search form' do
          expect(response).to render_template :search
        end

      end

    end

    describe 'AJAX requests' do

      context 'with valid data' do

        before(:each) do
          xhr :post, :search_results, search_form: {location: "Seattle, WA", beverage: "Beer", distance: 5}
        end

        it 'renders the results page' do
          expect(response).to render_template :'flights/search'
        end

      end

      context 'with invalid data' do

        before(:each) do
          xhr :post, :search_results, search_form: {location: "", beverage: "Beer", distance: 5}
        end

        xit 'returns errors for the search form' do
          expect(response).to render_template :search
        end

      end

    end

  end

  describe 'GET #show' do

    let!(:new_flight) { Flight.create(name: "Best Flight EVER", theme: 1) }

    describe 'HTTP requests' do

      before(:each) do
        get :show, id: new_flight.id
      end

      it 'redirects to the flight page' do
        expect(response).to render_template :show
      end

    end

    describe 'AJAX requests' do
      render_views

      before(:each) do
        xhr :get, :show, id: new_flight.id
      end

      it 'renders the flight show page' do
        expect(response).to render_template :show
        expect(response.body).to match /[container]/
      end

    end

  end

end
