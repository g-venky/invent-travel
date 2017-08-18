class AddSellerIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :seller_id, :integer
    add_index :reviews, :seller_id
  end
end
