Rails.application.routes.draw do
  resources :pictures
  resources :locations
  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :locations, only: [:index, :show]
      resources :pictures, only: [:index, :show]
    end
  end
end
