class Genre < ApplicationRecord
  has_many :games

  has_one_attached :image
  has_one_attached :thumbnail
end
