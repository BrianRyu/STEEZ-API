Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :parts
      resources :posts
      resources :products
      resources :users
      resources :comments
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'
      get '/profile', to: 'users#profile'
    end
  end
end
