class RemoveImageAndThumbnailFromPlatforms < ActiveRecord::Migration[7.0]
  def change
    remove_column :platforms, :image, :string
    remove_column :platforms, :thumbnail, :string
  end
end
