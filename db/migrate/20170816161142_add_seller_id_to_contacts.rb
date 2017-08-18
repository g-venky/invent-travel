class AddSellerIdToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :seller_id, :integer
    add_index :contacts, :seller_id
  end
end
