Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  
  resources :posts do
    resources :comments, only: %i[new create]
  end
  
  resources :comments, only: %i[edit update destroy]
  
  # Defines the root path route ("/")
  root to: "posts#index"
end
