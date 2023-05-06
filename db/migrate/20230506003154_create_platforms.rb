class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms do |t|
      t.string :name
      t.text :description
      t.integer :release_year
      t.references :generation, null: false, foreign_key: true
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
