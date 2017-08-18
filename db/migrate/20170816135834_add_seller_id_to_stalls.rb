class AddSellerIdToStalls < ActiveRecord::Migration[5.1]
  def change
    add_column :stalls, :seller_id, :integer
    add_index :stalls, :seller_id
  end
end
