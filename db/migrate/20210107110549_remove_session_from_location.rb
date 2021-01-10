class RemoveSessionFromLocation < ActiveRecord::Migration[6.0]
  def change
    remove_reference :locations, :session, null: false, foreign_key: true
  end
end
