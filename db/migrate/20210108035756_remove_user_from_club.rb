class RemoveUserFromClub < ActiveRecord::Migration[6.0]
  def change
    remove_reference :clubs, :user, null: false, foreign_key: true
  end
end
