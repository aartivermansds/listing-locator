ActiveAdmin.register Accomodation do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params :name, :description, :banner_image, :city, :state, :country, :zipcode, :latitude, :longitude, :email , :contact, :no_of_rooms, :no_of_toilets, :no_of_halls, :user_id

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
