class Place < ApplicationRecord
  belongs_to :place_category, optional: true
  has_many :images, as: :imageable
  geocoded_by :full_address
  after_validation :geocode

  mount_uploader  :banner_image, ImageUploader

  def full_address
    "#{self.city} #{self.state} #{self.country} #{self.zipcode}"
  end

end
