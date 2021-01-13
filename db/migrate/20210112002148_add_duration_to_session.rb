class AddDurationToSession < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :duration_mins, :integer
  end
end
