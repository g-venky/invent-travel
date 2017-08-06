class DeleteColumnFromPromotions < ActiveRecord::Migration[5.1]
  def change
  	remove_column :promotions,:content
  end
end
