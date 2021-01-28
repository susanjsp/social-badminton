class AddFirsteventToSession < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :first_event, :datetime
    add_column :sessions, :schedule, :text
  end
end
