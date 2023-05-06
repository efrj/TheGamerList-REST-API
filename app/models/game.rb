class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :softhouse
  belongs_to :platform
end
