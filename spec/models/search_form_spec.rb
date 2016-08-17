require 'rails_helper'

describe SearchForm do

  let(:search) { SearchForm.new(location: '83 S King St., Seattle, WA', beverage: 'Beer', distance: 5) }

  it 'has a collection of beverages for the form' do
    expect(SearchForm.beverage_options).to eq ['Wine', 'Beer', 'Whiskey', 'Coffee']
  end

  it 'has a collection of distances' do
    expect(SearchForm.distance_options).to include 35
  end



  describe '#generate_flights' do

    it "returns a flight of businesses" do
      expect(search.generate_flights).to be_an Array
    end

  end

end
