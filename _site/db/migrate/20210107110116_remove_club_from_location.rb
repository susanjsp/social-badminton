class RemoveClubFromLocation < ActiveRecord::Migration[6.0]
  def change
    remove_reference :locations, :club, null: false, foreign_key: true
  end
end
