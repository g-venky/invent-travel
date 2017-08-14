class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
    	t.text :about_us
    	t.text :destination
    	t.text :contact
    	t.text :office
    	t.text :travel_segment

      t.timestamps
    end
  end
end
