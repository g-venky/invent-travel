class CreateStalls < ActiveRecord::Migration[5.1]
  def change
    create_table :stalls do |t|
      t.text :about
      t.text :segments
      t.text :destination
      t.text :offices
    end
  end
end
