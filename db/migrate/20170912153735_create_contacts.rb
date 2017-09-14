class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer :number
      t.string :email
      t.string :department

      t.timestamps
    end
  end
end
