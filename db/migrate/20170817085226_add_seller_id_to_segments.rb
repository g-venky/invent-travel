class AddSellerIdToSegments < ActiveRecord::Migration[5.1]
  def change
    add_column :segments, :seller_id, :integer
    add_index :segments, :seller_id
  end
end
