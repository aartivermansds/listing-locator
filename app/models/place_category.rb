class PlaceCategory < ApplicationRecord
    validates :name, :description, presence: true
    has_many :places, dependent: :destroy
    mount_uploader :banner_image, ImageUploader
end
