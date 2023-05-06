class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.references :genre, null: false, foreign_key: true
      t.references :softhouse, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true
      t.string :video_url
      t.integer :release_year
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
