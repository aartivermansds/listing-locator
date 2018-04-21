class Listing < ApplicationRecord
  belongs_to :listing_category, optional: true
  belongs_to :user, optional: true
  has_many :images, as: :imageable, dependent: :destroy
  has_many :listing_amenities
  has_many :amenities, through: :listing_amenities
  has_many :working_hours, dependent: :destroy
  geocoded_by :full_address
  after_validation :geocode

  has_many :reviews, as: :reviewable 

  mount_uploader :banner_image, ImageUploader

  accepts_nested_attributes_for :working_hours, reject_if: :all_blank, allow_destroy: true
  
  paginates_per 5

  def full_address
    "#{self.city} #{self.state} #{self.country} #{self.zipcode}"
  end
end
