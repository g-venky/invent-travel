class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.text :body
      t.integer :my_query_id
      t.references :user, foreign_key: true
    end
  end
end
