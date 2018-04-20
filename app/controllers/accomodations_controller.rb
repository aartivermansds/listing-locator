class AccomodationsController < InheritedResources::Base
 layout 'listing'
 def new
   @accomodation = Accomodation.new
   @amenities = Amenity.all
 end
 def show
  @accomodation = Accomodation.find(params[:id])
end
private

def set_accomodation
  @accomodation = Accomodation.find(params[:id])
end

def accomodation_params
  params.require(:accomodation).permit(:name, :description, :banner_image, :city, :state, :country, :address, :zipcode, :website, :latitude, :longitude, :email, :contact, :no_of_rooms, :no_of_toilets, :no_of_halls, :user_id)
end
end

