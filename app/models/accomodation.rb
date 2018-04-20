class Accomodation < ApplicationRecord
  # belongs_to :listing_category, optional: true
  belongs_to :user, optional: true
  has_many :images, as: :imageable, dependent: :destroy
  has_many :accomodation_amenities
  has_many :amenities, through: :accomodation_amenities
  geocoded_by :full_address
  after_validation :geocode

  mount_uploader :banner_image, ImageUploader

  def full_address
    "#{self.city} #{self.state} #{self.country} #{self.zipcode}"
  end
end
