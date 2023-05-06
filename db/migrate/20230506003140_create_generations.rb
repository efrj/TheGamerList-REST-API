class CreateGenerations < ActiveRecord::Migration[7.0]
  def change
    create_table :generations do |t|
      t.string :name
      t.text :description
      t.integer :starting_year
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
