class CreateSegments < ActiveRecord::Migration[5.1]
  def change
    create_table :segments do |t|
    	t.string :travelsegments

      t.timestamps
    end
  end
end
