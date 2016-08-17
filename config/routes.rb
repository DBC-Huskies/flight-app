Rails.application.routes.draw do
  get '/' => 'pages#index'

  resources :businesses , only: [:new, :create, :show]

  resources :flights, only: [:index, :show] do
    get 'search', on: :collection
    post 'search_results', on: :collection
  end

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :ratings, only: [:new, :create]
end
