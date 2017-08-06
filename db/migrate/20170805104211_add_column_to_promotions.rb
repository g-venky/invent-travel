class AddColumnToPromotions < ActiveRecord::Migration[5.1]
  def change
  	add_column :promotions,:content,:text
  end
end
