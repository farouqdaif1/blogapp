Rails.application.routes.draw do
  get 'likes/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'users#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:new, :create]
    end
  end
end
