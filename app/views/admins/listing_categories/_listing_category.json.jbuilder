json.extract! listing_category, :id, :name, :description, :banner_image, :created_at, :updated_at
json.url listing_category_url(listing_category, format: :json)
