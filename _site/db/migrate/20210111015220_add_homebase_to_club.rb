class AddHomebaseToClub < ActiveRecord::Migration[6.0]
  def change
    add_reference :clubs, :homebase, foreign_key: { to_table: :locations }
  end
end
