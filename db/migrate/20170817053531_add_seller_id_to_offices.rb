class AddSellerIdToOffices < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :seller_id, :integer
    add_index :offices, :seller_id
  end
end
