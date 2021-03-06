ActiveAdmin.register ListingCategory do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :description, :banner_image
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
 form html: { multipart: true }  do |f|
    f.inputs  do
      f.input :name
      f.input :description
      f.input :banner_image, as: :file, input_html: { multiple: true }
    end
    f.actions
  end  
end
