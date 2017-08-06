class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.integer :my_doubt_id
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :replies, :my_doubt_id
  end
end
