class CreateBanners < ActiveRecord::Migration[7.0]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :description
      t.string :url_link
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
