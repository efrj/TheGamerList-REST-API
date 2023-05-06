class CreateSofthouses < ActiveRecord::Migration[7.0]
  def change
    create_table :softhouses do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
