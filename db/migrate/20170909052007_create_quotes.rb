class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.integer :my_query_id
      t.text :body
      t.references :seller, foreign_key: true

      t.timestamps
    end
    add_index :quotes, :my_query_id
  end
end
