class RemoveImageAndThumbnailFromSofthouses < ActiveRecord::Migration[7.0]
  def change
    remove_column :softhouses, :image, :string
    remove_column :softhouses, :thumbnail, :string
  end
end
