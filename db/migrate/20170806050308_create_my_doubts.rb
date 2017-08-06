class CreateMyDoubts < ActiveRecord::Migration[5.1]
  def change
    create_table :my_doubts do |t|
      t.string :destination
      t.text :doubt_details

      t.timestamps
    end
  end
end
