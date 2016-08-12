require 'rails_helper'

describe 'Business' do
  let(:valid_bus) { Business.new(name: "Whiskey Bar", location: "Ballard") }
  let(:invalid_bus) { Business.new(name: "", location: "") }

  describe 'validations' do
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
end
