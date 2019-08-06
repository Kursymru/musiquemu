class Event < ApplicationRecord
  belongs_to :artist
  belongs_to :author
end
