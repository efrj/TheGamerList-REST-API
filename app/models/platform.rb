class Platform < ApplicationRecord
  belongs_to :generation
  has_many :platforms_informations
  has_many :games
end
