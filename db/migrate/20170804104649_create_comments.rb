class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :topic_id
      t.text :body
      t.references :user

      t.timestamps
    end
    add_index :comments, :topic_id
  end
end
