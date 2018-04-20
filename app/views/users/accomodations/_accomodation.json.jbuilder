json.extract! accomodation, :id, :name, :description, :banner_image, :city, :state, :country, :address, :zipcode, :website, :latitude, :longitude, :email, :contact, :no_of_rooms, :no_of_toilets, :no_of_halls, :user_id, :created_at, :updated_at
json.url accomodation_url(accomodation, format: :json)
