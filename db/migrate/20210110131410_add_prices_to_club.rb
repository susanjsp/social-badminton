class AddPricesToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :member_price, :integer
    add_column :clubs, :non_member_price, :integer
  end
end
