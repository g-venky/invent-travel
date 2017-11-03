class AddColumnToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :comment_id, :integer
  end
end
