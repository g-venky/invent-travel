class AddColumnToDestinations < ActiveRecord::Migration[5.1]
  def change
  	add_column :destinations, :promotion_id, :integer
  end
end
