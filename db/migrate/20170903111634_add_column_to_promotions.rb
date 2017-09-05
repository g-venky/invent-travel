class AddColumnToPromotions < ActiveRecord::Migration[5.1]
  def change
    add_column :promotions, :stall_id, :integer
    add_index :promotions, :stall_id
  end
end
