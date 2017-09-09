class AddColumnToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :segments, :text
  end
end
