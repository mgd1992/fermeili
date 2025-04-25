Rails.application.routes.draw do
  get "home/index"

  resources :user_ferments, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:create, :update, :destroy]
  resources :ferment_recipes, only: [:index, :show, :create, :update, :destroy] 

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/favicon.ico', to: proc { [204, {}, []] }
  # Defines the root path route ("/")
  # root "posts#index"
end
