class RenameColumnInPromotions < ActiveRecord::Migration[5.1]
  def change
  	rename_column :promotions,:title,:destination
  	rename_column :promotions,:content,:details
  end
end
