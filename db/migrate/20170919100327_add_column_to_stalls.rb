class AddColumnToStalls < ActiveRecord::Migration[5.1]
  def change
    add_reference :stalls, :user, foreign_key: true
  end
end
