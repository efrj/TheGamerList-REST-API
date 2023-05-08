class RemoveImageAndThumbnailFromGenerations < ActiveRecord::Migration[7.0]
  def change
    remove_column :generations, :image, :string
    remove_column :generations, :thumbnail, :string
  end
end
