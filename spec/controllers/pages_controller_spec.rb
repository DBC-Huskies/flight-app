require 'rails_helper'

describe PagesController do
  render_views

  it 'renders the splash page' do
    get :index
    expect(response).to have_http_status(:ok)
    expect(response).to render_template(:index)
  end

  it 'removes the header' do
    get :index
    expect(response.body).to_not contain("SipTrip")
  end

end
