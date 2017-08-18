class AddRegionToSellers < ActiveRecord::Migration[5.1]
  def change
    add_column :sellers, :region, :string
  end
end
