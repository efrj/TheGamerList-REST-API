class RemoveImageAndThumbnailFromContents < ActiveRecord::Migration[7.0]
  def change
    remove_column :contents, :image, :string
    remove_column :contents, :thumbnail, :string
  end
end
