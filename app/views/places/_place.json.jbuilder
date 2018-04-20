json.extract! place, :id, :name, :description, :banner_image, :city, :state, :country, :zipcode, :latitude, :longitude,  :email,  :place_category_id, :created_at, :updated_at
json.url place_url(place, format: :json)
