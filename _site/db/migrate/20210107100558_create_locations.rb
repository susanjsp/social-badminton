class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.references :club, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :features
      t.string :coords

      t.timestamps
    end
  end
end
