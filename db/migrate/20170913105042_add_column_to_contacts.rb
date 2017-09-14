class AddColumnToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :stall_id, :integer
    add_index :contacts, :stall_id
    add_reference :contacts, :seller, foreign_key: true
  end
end
