class AddAttachmentImageToStalls < ActiveRecord::Migration[5.1]
  def self.up
    change_table :stalls do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :stalls, :image
  end
end
