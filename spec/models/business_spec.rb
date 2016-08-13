require 'rails_helper'

describe 'Business' do
  describe 'validations' do
    let(:valid_bus) { Business.new(name: "Whiskey Bar", location: "Ballard") }
    let(:invalid_bus) { Business.new(name: "", location: "") }

    describe 'when valid' do
      it 'validates the presence of name' do
        expect(valid_bus.name).to eq('Whiskey Bar')
      end

      it 'validates the presence of location' do
        expect(valid_bus.location).to eq('Ballard')
      end

      it 'validates the default rating of 3' do
        expect(valid_bus.rating).to eq 3
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
      it 'validates whiskey is at position 2 in the theme enum' do
        expect(Business.themes[:whiskey]).to eq 2
      end

      it 'validates whiskey is at position 0 in the theme enum' do
        expect(Business.themes[:wine]).to eq 0
      end

      it 'validates whiskey is at position 1 in the theme enum' do
        expect(Business.themes[:beer]).to eq 1
      end

      it 'validates whiskey is at position 3 in the theme enum' do
        expect(Business.themes[:coffee]).to eq 3
      end
    end
  end
end
