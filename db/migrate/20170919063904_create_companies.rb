class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :companyname
      t.string :website
      t.text :email
      t.text :region

      t.timestamps
    end
  end
end
