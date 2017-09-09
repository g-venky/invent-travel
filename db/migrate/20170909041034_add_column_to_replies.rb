class AddColumnToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :my_query_id, :integer
    add_index :replies, :my_query_id
  end
end
