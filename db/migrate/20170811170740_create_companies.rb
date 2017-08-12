class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name, null: false
      t.text :website, null: false

      t.string :email, null: false, default: ""
      t.integer :user_id
      t.timestamps
    end
  end
end
