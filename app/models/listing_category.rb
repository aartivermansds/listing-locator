class ListingCategory < ApplicationRecord
    validates :name, :description, presence: true
    has_many :listings, dependent: :destroy
end
