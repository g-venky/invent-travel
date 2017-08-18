class CreateBrouchers < ActiveRecord::Migration[5.1]
  def change
    create_table :brouchers do |t|
    	t.text :title

      t.timestamps
    end
  end
end
