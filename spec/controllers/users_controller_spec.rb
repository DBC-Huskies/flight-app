require 'rails_helper'

describe UsersController do

  describe 'GET #new' do

    it 'renders the new user page' do
      get :new
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:new)
    end

    it 'assigns a new user' do
      get :new
      expect(assigns(:user)).to be_a User
    end

  end

  describe 'GET #show' do

    let!(:new_user) { User.create(username: "dbc_student", password: "sekrit") }

    it 'renders the users profile' do
      get :show, id: new_user.id
      expect(response).to render_template :show
    end

    it 'raises error if user is invalid' do
      expect{get :show, id: 4395}.to raise_error(ActiveRecord::RecordNotFound)
    end

  end

  describe 'POST #create' do

    context 'with valid data' do

      it 'redirects to the user profile' do
        post :create, user: {:username => "Usain Bolt", :password => "flash", password_confirmation: "flash"}
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to(User.last)
        expect(User.last.username).to eq "Usain Bolt"
      end

    end

    context 'with invalid data' do

      it 'renders the form again with empty fields' do
        post :create, user: {username: "", password: "", password_confirmation: ""}
        expect(response).to render_template(:new)
      end

      it 'renders the form again if password_confirmation does not match' do
        post :create, user: {username: "Jimmy Dean", password: "sausagelink", password_confirmation: "fatfingers"}
        expect(response).to render_template(:new)
      end

    end

  end

end
