class RemoveImageAndThumbnailFromBanners < ActiveRecord::Migration[7.0]
  def change
    remove_column :banners, :image, :string
    remove_column :banners, :thumbnail, :string
  end
end
