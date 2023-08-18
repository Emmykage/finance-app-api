Rails.application.routes.draw do
  resources :portfolios
  resources :assets
  namespace :api do
    namespace :v1 do
      resources :users
      post "/login", to: "users#login"
    end 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
