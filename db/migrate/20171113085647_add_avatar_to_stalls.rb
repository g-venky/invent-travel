class AddAvatarToStalls < ActiveRecord::Migration[5.1]
    def self.up
    change_table :stalls do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :stalls, :avatar
  end
end
