class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :organization
      t.integer :employees
      t.string :website
      t.string :designation
      t.string :email
      t.string :headoffice
      t.string :branches
      t.text :aboutus
      t.string :firstname
      t.string :lastname
      t.integer :seller_id

      t.timestamps
    end
    add_index :profiles, :seller_id
  end
end
