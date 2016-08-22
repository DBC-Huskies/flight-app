require 'rails_helper'

describe 'Business' do
  let(:valid_bus) { Business.create(name: 'The Barrel Thief', location: '3417 Evanston Ave N #102, Seattle, WA 98103', theme: 2) }

  describe 'validations' do

    let(:invalid_bus) { Business.create(name: "", location: "") }

    describe 'when valid' do
      it 'validates the presence of name' do
        expect(valid_bus.name).to eq('The Barrel Thief')
      end

      it 'validates the presence of location' do
        expect(valid_bus.location).to eq('3417 Evanston Ave N #102, Seattle, WA 98103')
      end
    end

    describe 'when not valid' do
      it 'is not valid without a name and location' do
        expect(invalid_bus).to_not be_valid
      end
    end
  end

  describe 'enum' do
    describe 'theme associations' do
      it 'validates distillery is at position 2 in the theme enum' do
        expect(Business.themes[:distillery]).to eq 2
      end

      it 'validates wine is at position 0 in the theme enum' do
        expect(Business.themes[:wine]).to eq 0
      end

      it 'validates beer is at position 1 in the theme enum' do
        expect(Business.themes[:beer]).to eq 1
      end

      it 'validates coffee is at position 3 in the theme enum' do
        expect(Business.themes[:coffee]).to eq 3
      end
    end
  end

  describe 'geocoder' do
    it 'generates GPS coordinates for a given address' do
      expect(valid_bus.latitude).to eq 47.6505336
      expect(valid_bus.longitude).to eq -122.3517838
    end
  end


  describe '#curate_flight' do
    let!(:biz1) { Business.create(name: 'Standard Brewing', location: '2504 S Jackson St, Seattle, WA 98144', theme: 1, rating: 5) }
    let!(:biz2) { Business.create(name: 'Schooner Exact Brewing Company', location: '3901 1st Avenue South, Seattle, WA 98134', theme: 1, rating: 4) }
    let!(:biz3) { Business.create(name: 'Holy Mountain Brewing Company', location: '1421 Elliott Ave W, Seattle, WA 98119', theme: 1, rating: 3) }

    xit it "returns a flight of businesses" do
      Flight.create(name: "First flight", theme: 1)
      new_flight = biz1.curate_flight(1)
      expect(new_flight.businesses.last).to eq biz3
    end
  end

  describe 'ratings' do
    let!(:sbrewing) { Business.create!({ name: 'Standard Brewing', location: '2504 S Jackson St Seattle, WA', street: '2504 S Jackson St', city: 'Seattle, WA', theme: 1, rating: 5} ) }
    let(:doggy) { User.create!({ username: 'puppy', password: 'woofwoofwoof'})}
    let(:cat) { User.create!({ username: 'kitty', password: 'meow'})}

    before (:each) do
      sbrewing.ratings.create({ author: doggy, value: 5})
      sbrewing.ratings.create({ author: cat, value: 1})
    end

    it 'can has multiple ratings by different users' do
      expect(sbrewing.ratings.count).to eq 2
    end

    it 'has an average rating' do
      expect(sbrewing.average_rating).to eq 3
    end

  end
end
