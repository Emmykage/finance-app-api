Rails.application.routes.draw do
  resources :messages

  # resources :transactions
  # resources :wallets
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :assets
      resources :messages
      resources :portfolios do
        collection do 
          get :all_portfolios 
        end
        resources :portfolio_interests
      end
      resources :wallets
      resources :transactions do 
        collection do
          get :all_transaction
        end
      end
      resources :earning_transactions
      resources :earnings
      get "/account", to: "users#account"
      post "/login", to: "users#login"
    end 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
