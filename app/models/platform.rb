# == Schema Information
#
# Table name: platforms
#
#  id            :bigint           not null, primary key
#  description   :text
#  image         :string
#  name          :string
#  release_year  :integer
#  thumbnail     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  generation_id :bigint           not null
#
# Indexes
#
#  index_platforms_on_generation_id  (generation_id)
#
# Foreign Keys
#
#  fk_rails_...  (generation_id => generations.id)
#
class Platform < ApplicationRecord
  belongs_to :generation
  has_many :platforms_informations
  has_many :games

  has_one_attached :image
  has_one_attached :thumbnail
end
