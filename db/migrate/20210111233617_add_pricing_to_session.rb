class AddPricingToSession < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :member_price, :integer
    add_column :sessions, :non_member_price, :integer
  end
end
