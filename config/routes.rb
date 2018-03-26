Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  resources :listings
  namespace :admins do 
    resources :amenities
    resources :listings
    resources :listing_categories
    resources :place_categories
    resources :places
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
