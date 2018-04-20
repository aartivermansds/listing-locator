ActiveAdmin.register Listing do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params :name, :description, :banner_image, :city, :state, :country, :zipcode, :latitude, :longitude, :listing_category_id, :contact, :email, :website, :address, :fb_url, :linkedin_url, :twitter_url, :gplus_url
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

    index do
      selectable_column
      id_column
      column :name
      column :full_address
      column :user
      actions
  end

end
