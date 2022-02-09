Rails.application.routes.draw do
  devise_for :users

  root 'users#index'
  
  resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments, only: [:new,:create]
    resource :likes, only: [:create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
