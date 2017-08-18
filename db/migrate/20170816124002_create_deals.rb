class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
    t.string :destinations

      t.timestamps
    end
  end
end
