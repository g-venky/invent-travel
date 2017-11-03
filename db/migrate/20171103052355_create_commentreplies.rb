class CreateCommentreplies < ActiveRecord::Migration[5.1]
  def change
    create_table :commentreplies do |t|
      t.text :body
      t.integer :comment_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
