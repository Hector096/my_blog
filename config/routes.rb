Rails.application.routes.draw do
  # get 'users/user_id/posts',to: 'posts#index'
  # get 'users/user_id/posts/:id', to: 'posts#show'
  # get 'users/', to: 'users#index'
  # get 'users/:id',to: 'users#show'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end