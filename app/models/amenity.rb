class Amenity < ApplicationRecord
  has_many :listing_amenities
  has_many :amenities, through: :listing_amenities
  has_many :accomodation_amenities
  has_many :accomodations, through: :accomodation_amenities
end
