class DropTableQuotes < ActiveRecord::Migration[5.1]
  def change
  	drop_table :quotes
  end
end
