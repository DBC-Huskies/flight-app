require 'rails_helper'

describe User do
  let(:doggy) { User.create!({ username: 'puppy', password: 'woofwoofwoof'})}
  let(:biz) { Business.create!(name: 'Holy Mountain Brewing Company', location: '1421 Elliott Ave W, Seattle, WA', city: 'Seattle, WA', street: '1421 Elliott Ave W', theme: 1, rating: 3) }
  let(:biz2) { Business.create!(name: 'Awesome Wine', location: '321 Aloha St, Seattle, WA', city: 'Seattle, WA', street: '321 Aloha St', theme: 1, rating: 3) }

  it 'can add rating to a business' do
    expect(doggy.ratings.create!({ value: 4, business: biz})).to be_valid
  end

  it 'can only add one rating per business' do
    doggy.ratings.create!({ value: 4, business: biz})
    expect(doggy.ratings.create({ value: 3, business: biz})).to be_invalid
  end

  it 'can give ratings to different businesses' do
    rattata = User.create!({ username: 'rattata', password: 'cheese' })
    rattata.ratings.create!({ value: 4, business: biz})
    rattata.ratings.create!({ value: 3, business: biz2 })
    expect(rattata.ratings.count).to eq 2
  end

end
