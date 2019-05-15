Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :parts
      resources :posts
      resources :products
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
