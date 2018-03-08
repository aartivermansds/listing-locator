class Listing < ApplicationRecord
  belongs_to :listing_category, optional: true
  has_many :images, as: :imageable
  has_many :listing_amenities
  has_many :listings, through: :listing_amenities
  has_many :working_hours, dependent: :destroy
  accepts_nested_attributes_for :working_hours, reject_if: :all_blank, allow_destroy: true
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{self.city} #{self.state} #{self.country} #{self.zipcode}"
  end
end