# == Schema Information
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Genre, type: :model do
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryBot.build(:genre)).to be_valid
    end

    it "is invalid without a name" do
      genre = FactoryBot.build(:genre, name: nil)
      expect(genre).not_to be_valid
    end
  end

end
