# == Schema Information
#
# Table name: generations
#
#  id            :bigint           not null, primary key
#  description   :text
#  name          :string
#  starting_year :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Generation < ApplicationRecord
  has_many :platforms

  has_one_attached :image
  has_one_attached :thumbnail
end
