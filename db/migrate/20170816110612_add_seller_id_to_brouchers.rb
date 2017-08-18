class AddSellerIdToBrouchers < ActiveRecord::Migration[5.1]
  def change
    add_column :brouchers, :seller_id, :integer
    add_index :brouchers, :seller_id
  end
end
