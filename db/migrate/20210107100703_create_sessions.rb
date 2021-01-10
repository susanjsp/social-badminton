class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.references :club, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :membership
      t.boolean :beginners

      t.timestamps
    end
  end
end
