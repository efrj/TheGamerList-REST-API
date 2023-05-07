class RemoveImageAndThumbnailFromGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :image, :string
    remove_column :games, :thumbnail, :string
  end
end
