Rails.application.routes.draw do
  devise_for :customers
  resources :accomodations 
  get '/search-listing' => "listing_search#search_listing"

  devise_for :users, controllers: {
    sessions: "users/sessions", 
    registrations: "users/registrations", 
    passwords: "users/passwords", 
    confirmations: "users/confirmations"
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  resources :listings, only: [:show, :index]
  resources :places, only: [:show, :index]
  delete '/remove_listing_image/:id' => "listings#remove_listing_image"

  namespace :admins do 
    resources :amenities
    resources :listings 

    resources :listing_categories
    resources :place_categories
    resources :places do 
      collection do
        post :upload_place_image
      end
    end
  end

  namespace :users do 

        resources :listings do
          collection do
            post :upload_listing_image
          end
          member do 
            get :add_images
          end 
        end
        resources :accomodations do
          collection do
           post :upload_accomodation_image 
         end
         member do 
          get :add_images  
        end  
      end

    resources :accounts
    get '/my-account' => "accounts#my_account"

  end

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

