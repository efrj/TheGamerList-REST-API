class CreatePlatformsInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms_informations do |t|
      t.references :platform, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
