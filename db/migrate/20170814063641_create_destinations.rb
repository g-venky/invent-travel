class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
    	t.text :destination
    	

      t.timestamps
    end
  end
end
