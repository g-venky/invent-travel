class AddSellerIdToPromotions < ActiveRecord::Migration[5.1]
  def change
    add_column :promotions, :seller_id, :integer
    add_index :promotions, :seller_id
  end
end
