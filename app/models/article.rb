class Article < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  belongs_to :author
end
