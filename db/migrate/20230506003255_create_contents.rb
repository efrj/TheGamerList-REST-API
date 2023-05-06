class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :content
      t.string :slug
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
