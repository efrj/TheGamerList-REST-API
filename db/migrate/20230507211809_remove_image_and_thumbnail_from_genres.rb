class RemoveImageAndThumbnailFromGenres < ActiveRecord::Migration[7.0]
  def change
    remove_column :genres, :image, :string
    remove_column :genres, :thumbnail, :string
  end
end
