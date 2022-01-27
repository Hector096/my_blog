Rails.application.routes.draw do

  resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments, only: [:new,:create]
    resource :likes, only: [:create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'
end
