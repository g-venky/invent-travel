class RemoveColumnFromStalls < ActiveRecord::Migration[5.1]
  def change
    remove_column :stalls, :contacts, :string
  end
end
