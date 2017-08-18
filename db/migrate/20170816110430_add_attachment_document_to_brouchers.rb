class AddAttachmentDocumentToBrouchers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :brouchers do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :brouchers, :document
  end
end
