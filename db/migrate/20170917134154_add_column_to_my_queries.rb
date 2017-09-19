class AddColumnToMyQueries < ActiveRecord::Migration[5.1]
  def change
    add_column :my_queries, :querytype, :text
  end
end
