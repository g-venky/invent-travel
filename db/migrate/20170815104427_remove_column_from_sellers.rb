class RemoveColumnFromSellers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :sellers,:reset_password_token
  	remove_column :sellers,:reset_password_sent_at
  end
end
