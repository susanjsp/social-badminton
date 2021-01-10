class AddSessionToLocation < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :session, null: false, foreign_key: true
  end
end
