class AddUserIdToPromotions < ActiveRecord::Migration[5.1]
  def change
    add_column :promotions, :user_id, :integer
    add_index :promotions, :user_id
  end
end
