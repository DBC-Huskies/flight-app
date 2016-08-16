Rails.application.routes.draw do
  get '/' => 'pages#index'

  resources :businesses , only: [:new, :create]

  resources :flights, only: [:index, :show] do
    get 'search', on: :collection
    post 'search_results', on: :collection
  end

end
