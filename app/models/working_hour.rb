class WorkingHour < ApplicationRecord
   belongs_to :listing, optional: true
   WEEKDAYS = %w[monday tuesday wednesday thursday friday saturday sunday].freeze
   OPENINGTIME = %w[9.00_AM 10.00_AM 11.00_AM 12.00_PM 1.00_PM 2.00_PM 3.00_PM 4.00_PM 5.00_PM 6.00_PM 7.00_PM 8.00_PM 9.00_PM 10.00_PM 11.00_PM 12.00_AM 1.00_AM 2.00_AM 3.00_AM 4.00_AM 5.00_AM 6.00_AM 7.00_AM 8.00_AM  closed].freeze
   CLOSINGTIME = %w[10.00_AM 11.00_AM 12.00_PM 1.00_PM 2.00_PM 3.00_PM 4.00_PM 5.00_PM 6.00_PM 7.00_PM 8.00_PM 9.00_PM 10.00_PM 11.00_PM 12.00_AM 1.00_AM 2.00_AM 3.00_AM 4.00_AM 5.00_AM 6.00_AM 7.00_AM 8.00_AM  closed].freeze
end
