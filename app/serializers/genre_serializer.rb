# == Schema Information
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GenreSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :image_url, :thumbnail_url, :created_at, :updated_at

  def image_url
    return nil unless object.image.attached?
    rails_representation_url(object.image, host: "#{ENV['HOST']}:#{ENV['PORT']}")
  end

  def thumbnail_url
    return nil unless object.image.attached?
    rails_representation_url(object.image.variant(resize: "150x100"), host: "#{ENV['HOST']}:#{ENV['PORT']}")
  end
end
