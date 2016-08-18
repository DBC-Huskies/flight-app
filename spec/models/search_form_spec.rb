require 'rails_helper'

describe SearchForm do
  let(:beer_search) { SearchForm.new(location: '83 S King St., Seattle, WA', beverage: 'Beer', distance: 5) }
  let(:wine_search) { SearchForm.new(location: '83 S King St., Seattle, WA', beverage: 'Wine', distance: 5) }
  let(:distillery_search) { SearchForm.new(location: '83 S King St., Seattle, WA', beverage: 'Distillery', distance: 5) }
  let(:coffee_search) { SearchForm.new(location: '83 S King St., Seattle, WA', beverage: 'Coffee', distance: 5) }

  it 'has a collection of beverages for the form' do
    expect(SearchForm.beverage_options).to eq ['Wine', 'Beer', 'Distillery', 'Coffee']
  end

  it 'has a collection of distances' do
    expect(SearchForm.distance_options).to include 35
  end

  # it 'returns the correct enum value from private method' do
  #   result = SearchForm.send(:get_theme_enum, 'Wine')
  #   expect(result).to eq 1
  # end

  describe '#generate_flights' do

    let(:beer_collection) { beer_search.generate_flights }
    let(:wine_collection) { wine_search.generate_flights }
    let(:distillery_collection) { distillery_search.generate_flights }
    let(:coffee_collection) { coffee_search.generate_flights }

    it 'returns an array' do
      expect(beer_collection).to be_an Array
    end

  end

  describe '#assemble_digest' do
    it 'should generate consistent result' do
      expect(beer_search.send(:assemble_digest)).to eq "cb6e0eda94c3a95fe1b4d1a3e5d1869ec4cc8481bf230bf5325e190ffe28fa55"
    end
  end

end
