class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.text :discussions
      t.text :details

      t.timestamps
    end
  end
end
