class Amenity < ApplicationRecord
    has_many :listing_amenities
    has_many :amenities, through: :listing_amenities
end