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
      session[:user_id] = 54
      delete :destroy, id: 54
    end

    it 'sets the session id to nil' do
      expect(session[:user_id]).to eq nil
    end

    it 'redirects to the search page' do
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(search_flights_path)
    end

  end

  describe '#create' do
    let(:valid_user) { User.create(username: "Jimmy Dean", password: '5au5ag3l1nk')}

    context 'with valid login credentials' do
      post :create, login_form: {:username => "Jimmy Dean", :password => "5au5ag3l1nk"}
      expect(response).to have_http_status(:ok)
    end

    context 'with invalid login credentials' do

    end

  end

end
