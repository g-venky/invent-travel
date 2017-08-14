class CreateMyQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :my_queries do |t|
    	t.text :query_number
    	t.text :destination
    	t.text :pax
    	t.datetime :travel_date
    	t.text :duration
    	t.text :tour_requirements
    	t.integer :quotes_received
    	t.integer :user_id

      t.timestamps
    end
  end
end
