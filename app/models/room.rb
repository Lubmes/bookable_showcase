class Room < ApplicationRecord
  acts_as_bookable time_type: :range, bookable_across_occurrences: true, capacity_type: :open
end
