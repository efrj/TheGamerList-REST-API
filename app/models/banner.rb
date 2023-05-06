# == Schema Information
#
# Table name: banners
#
#  id          :bigint           not null, primary key
#  description :text
#  image       :string
#  thumbnail   :string
#  title       :string
#  url_link    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Banner < ApplicationRecord
  has_one_attached :image
  has_one_attached :thumbnail
end
