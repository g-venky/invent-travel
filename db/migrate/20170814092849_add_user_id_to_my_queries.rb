class AddUserIdToMyQueries < ActiveRecord::Migration[5.1]
  def change
    add_column :my_queries, :user_id, :integer
    add_index :my_queries, :user_id
  end
end
