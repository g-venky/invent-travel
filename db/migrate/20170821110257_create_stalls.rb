class CreateStalls < ActiveRecord::Migration[5.1]
  def change
    create_table :stalls do |t|
    	t.text :about
    	t.text :destinations
    	t.text :segments
    	t.text :contacts
    	t.text :offices
    end
  end
end
