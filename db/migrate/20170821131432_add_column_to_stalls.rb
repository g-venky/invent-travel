class AddColumnToStalls < ActiveRecord::Migration[5.1]
  def change
    add_column :stalls, :promotion_id, :integer
    add_index :stalls, :promotion_id
  end
end
