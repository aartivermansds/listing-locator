class Image < ApplicationRecord
    belongs_to :imageable, polymorohic: :true
end
