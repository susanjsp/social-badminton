class RemoveColumnsFromSession < ActiveRecord::Migration[6.0]
  def change
    remove_column :sessions, :end_time, :string
    remove_column :sessions, :recurring, :string
    remove_column :sessions, :start_time, :string
  end
end
