json.extract! listing, :id, :name, :description, :banner_image, :city, :state, :country, :zipcode, :latitude, :longitude, :contact, :email, :website, :address, :fb_url, :linkedin_url, :gplus_url, :twitter_url, :listing_category_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
