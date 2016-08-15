Rails.application.routes.draw do
  get '/' => 'pages#index'

  resources :flights do
    get 'search', on: :collection
    post 'search_results', on: :collection
  end

end
