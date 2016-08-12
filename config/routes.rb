Rails.application.routes.draw do
  get '/' => 'pages#index'

  resources :flights do
    get 'search', on: :collection
  end

  get '/search', to: 'flights#search'

end
