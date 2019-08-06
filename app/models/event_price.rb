class EventPrice < ApplicationRecord
  belongs_to :event
  belongs_to :event_category
end
