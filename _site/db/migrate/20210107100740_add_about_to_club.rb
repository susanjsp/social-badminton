class AddAboutToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :about, :text
  end
end
