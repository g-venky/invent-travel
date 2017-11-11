class AddColumnToMyQueries < ActiveRecord::Migration[5.1]
  def change
    add_column :my_queries, :query_number, :integer
  end
end
