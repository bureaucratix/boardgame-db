Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
      resources :collections
      # post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

end