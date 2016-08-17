require 'rails_helper'

RSpec.describe Rating, type: :model do

  describe 'attributes' do
    let(:santa) { User.create!({ username: 'santa', password: 'newyear'})}
    let(:biz) { Business.create!({ name: 'Standard Brewing', location: '2504 S Jackson St Seattle, WA', street: '2504 S Jackson St', city: 'Seattle, WA', theme: 1, rating: 5} ) }
    let(:rating) { santa.ratings.create!({ value: 5, business: biz}) }

    it 'returns a user which is an author of the rating' do
      expect(rating.author).to eq santa
    end

    it 'returns a business to which this rating is given' do
      expect(rating.business).to eq biz
    end

    it 'returns a value of the rating' do
      expect(rating.value).to eq 5
    end
  end

  describe 'validations' do
    let(:santa) { User.create!({ username: 'santa', password: 'newyear'})}
    let(:biz) { Business.create!({ name: 'Standard Brewing', location: '2504 S Jackson St Seattle, WA', street: '2504 S Jackson St', city: 'Seattle, WA', theme: 1, rating: 5} ) }

    it 'is valid with a rating value of 1' do
      rating1 = santa.ratings.create!({ value: 1, business: biz})
      expect(rating1).to be_valid
    end

    it 'is valid with a rating value of 2' do
      rating2 = santa.ratings.create!({ value: 2, business: biz})
      expect(rating2).to be_valid
    end

    it 'is valid with a rating value of 3' do
      rating3 = santa.ratings.create!({ value: 3, business: biz})
      expect(rating3).to be_valid
    end

    it 'is valid with a rating value of 4' do
      rating4 = santa.ratings.create!({ value: 4, business: biz})
      expect(rating4).to be_valid
    end

    it 'is valid with a rating value of 5' do
      rating5 = santa.ratings.create!({ value: 5, business: biz})
      expect(rating5).to be_valid
    end

    it 'is invalid with a rating value of 0' do
      rating0 = santa.ratings.create({ value: 0, business: biz})
      expect(rating0).to be_invalid
    end

    it 'is invalid with a rating value of 6' do
      rating6 = santa.ratings.create({ value: 6, business: biz})
      expect(rating6).to be_invalid
    end

    it 'is invalid with a rating value of 10' do
      rating10 = santa.ratings.create({ value: 10, business: biz})
      expect(rating10).to be_invalid
    end

  end

end
