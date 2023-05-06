class Generation < ApplicationRecord
  has_many :platforms

  has_one_attached :image
  has_one_attached :thumbnail
end
