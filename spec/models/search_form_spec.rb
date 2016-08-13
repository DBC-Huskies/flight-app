require 'rails_helper'

describe SearchForm do
  let(:search) { SearchForm.new(location: '83 S King St., Seattle, WA', beverage: 'Beer', distance: 5) }
  describe '#generate_flights' do
    it "return a flight of businesses" do
      expect(search.generate_flights).to be_an Array
    end
  end
end
