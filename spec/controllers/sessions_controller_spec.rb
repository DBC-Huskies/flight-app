require 'rails_helper'

describe SessionsController do

  it 'renders the login page' do
    get :new
    expect(response).to have_http_status(:ok)
    expect(response).to render_template(:new)
  end

  it 'assigns an empty login form' do
    get :new
    expect(assigns(:login)).to be_a(LoginForm)
  end

  describe '#destroy' do
    before(:each) do
      session[:user_id] = true
      get :destroy
    end

    it 'sets the session id to nil' do
      expect(session[:user_id]).to eq false
    end
  end

end
