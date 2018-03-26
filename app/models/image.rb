class Image < ApplicationRecord
    belongs_to :imageable, polymorohic: :true
    mount_uploader :image, ImageUploader

end
