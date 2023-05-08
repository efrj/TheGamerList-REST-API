# == Schema Information
#
# Table name: softhouses
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Softhouse < ApplicationRecord
  has_many :games

  has_one_attached :image
  has_one_attached :thumbnail
end
