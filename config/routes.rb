Rails.application.routes.draw do
  get '/' => 'pages#index'

  resources :flights, only: [:index, :show] do
    get 'search', on: :collection
    post 'search_results', on: :collection
  end

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
end
