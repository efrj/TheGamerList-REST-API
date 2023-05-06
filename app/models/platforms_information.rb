# == Schema Information
#
# Table name: platforms_informations
#
#  id          :bigint           not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  platform_id :bigint           not null
#
# Indexes
#
#  index_platforms_informations_on_platform_id  (platform_id)
#
# Foreign Keys
#
#  fk_rails_...  (platform_id => platforms.id)
#
class PlatformsInformation < ApplicationRecord
  belongs_to :platform
end
