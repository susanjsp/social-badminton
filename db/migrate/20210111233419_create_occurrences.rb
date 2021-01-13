class CreateOccurrences < ActiveRecord::Migration[6.0]
  def change
    create_table :occurrences do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
