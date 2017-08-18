class AddColumnToSellers < ActiveRecord::Migration[5.1]
  def change
  	
  add_index :sellers, :reset_password_token, unique: true
  end
end
