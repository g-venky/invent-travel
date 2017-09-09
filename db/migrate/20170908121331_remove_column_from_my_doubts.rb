class RemoveColumnFromMyDoubts < ActiveRecord::Migration[5.1]
  def change
    remove_column :my_doubts, :stall_id
  end
end
