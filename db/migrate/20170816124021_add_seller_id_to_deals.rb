class AddSellerIdToDeals < ActiveRecord::Migration[5.1]
  def change
    add_column :deals, :seller_id, :integer
    add_index :deals, :seller_id
  end
end
