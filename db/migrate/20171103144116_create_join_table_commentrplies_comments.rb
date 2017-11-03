class CreateJoinTableCommentrpliesComments < ActiveRecord::Migration[5.1]
  def change
    create_join_table :commentreplies, :comments do |t|
       t.index [:commentreply_id, :comment_id]
       t.index [:comment_id, :commentreply_id]
    end
  end
end
