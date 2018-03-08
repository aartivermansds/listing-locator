class WorkingHour < ApplicationRecord
  belongs_to :listing, optional: true
end
