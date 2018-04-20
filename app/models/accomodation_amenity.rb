class AccomodationAmenity < ApplicationRecord
  belongs_to :accomodation, optional: true
  belongs_to :amenity, optional: true
end
