Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :cars
      resources :users do
        resources :reservations
      end
      
      post "/login", to: "users#login"
      get "/login", to: "users#token_authenticate"
    end
  end

end
