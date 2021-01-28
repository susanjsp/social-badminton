class RemoveCoordsFromLocation < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :coords, :string
  end
end
