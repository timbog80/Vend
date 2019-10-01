Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'listings#index'
  resources :listings
  resources :users, only: [:show]
  get 'users/:id/listings' => 'users#listings', :as => :user_listings
  
end
