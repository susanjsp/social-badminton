class AddLinksToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :website, :string
    add_column :clubs, :facebook, :string
  end
end
