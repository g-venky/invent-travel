class AddUserIdToMyDoubts < ActiveRecord::Migration[5.1]
  def change
    add_column :my_doubts, :user_id, :integer
    add_index :my_doubts, :user_id
  end
end
