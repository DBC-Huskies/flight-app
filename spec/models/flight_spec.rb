require 'rails_helper'

describe Flight do

  let!(:valid_flight) { Flight.new(name: "Fremont Beer Tour", theme: 1) }
  let(:invalid_flight) { Flight.new(name: "") }

  describe 'validations' do
    describe 'when valid' do
      it 'validates the presence of name' do
        expect(valid_flight.name).to eq('Fremont Beer Tour')
      end
    end

    describe 'when not valid' do
    xit 'is not valid without a name' do
        expect(invalid_flight).to_not be_valid
      end
    end
  end

  describe 'theme associations' do
    it 'validates whiskey is at position 2 in the theme enum' do
      expect(Flight.themes[:whiskey]).to eq 2
    end

    it 'validates wine is at position 0 in the theme enum' do
      expect(Flight.themes[:wine]).to eq 0
    end

    it 'validates beer is at position 1 in the theme enum' do
      expect(Flight.themes[:beer]).to eq 1
    end

    it 'validates coffee is at position 3 in the theme enum' do
      expect(Flight.themes[:coffee]).to eq 3
    end
  end
end
