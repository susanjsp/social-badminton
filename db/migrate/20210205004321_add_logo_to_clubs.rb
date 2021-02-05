class AddLogoToClubs < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :logo, :string
  end
end
