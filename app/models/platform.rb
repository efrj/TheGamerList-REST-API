class Platform < ApplicationRecord
  belongs_to :generation
  has_many :platforms_informations
  has_many :games

  has_one_attached :image
  has_one_attached :thumbnail
end
