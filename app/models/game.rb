# == Schema Information
#
# Table name: games
#
#  id           :bigint           not null, primary key
#  description  :text
#  release_year :integer
#  title        :string
#  video_url    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  genre_id     :bigint           not null
#  platform_id  :bigint           not null
#  softhouse_id :bigint           not null
#
# Indexes
#
#  index_games_on_genre_id      (genre_id)
#  index_games_on_platform_id   (platform_id)
#  index_games_on_softhouse_id  (softhouse_id)
#
# Foreign Keys
#
#  fk_rails_...  (genre_id => genres.id)
#  fk_rails_...  (platform_id => platforms.id)
#  fk_rails_...  (softhouse_id => softhouses.id)
#
class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :softhouse
  belongs_to :platform

  has_one_attached :image
  has_one_attached :thumbnail
end
