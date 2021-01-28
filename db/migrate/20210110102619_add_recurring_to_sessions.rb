class AddRecurringToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :recurring, :text
  end
end
