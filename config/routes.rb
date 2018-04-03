Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions", 
    registrations: "users/registrations", 
    passwords: "users/passwords", 
    confirmations: "users/confirmations"
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  resources :listings do
    collection do
        post :upload_listing_image
      end 
    end
    delete '/remove_listing_image/:id' => "listings#remove_listing_image"
  

  namespace :admins do 
    resources :amenities
    resources :listings 

    resources :listing_categories
    resources :place_categories
    resources :places
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
