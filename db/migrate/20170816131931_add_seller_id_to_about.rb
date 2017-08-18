class AddSellerIdToAbout < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :seller_id, :integer
    add_index :abouts, :seller_id
  end
end
