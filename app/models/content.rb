# == Schema Information
#
# Table name: contents
#
#  id         :bigint           not null, primary key
#  content    :text
#  image      :string
#  slug       :string
#  thumbnail  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Content < ApplicationRecord
  has_one_attached :image
  has_one_attached :thumbnail
end
