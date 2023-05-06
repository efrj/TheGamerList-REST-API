class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :softhouse
  belongs_to :platform

  has_one_attached :image
  has_one_attached :thumbnail
end
