class RemovePricingFromClub < ActiveRecord::Migration[6.0]
  def change
    remove_column :clubs, :member_price, :string
    remove_column :clubs, :non_member_price, :string
  end
end
