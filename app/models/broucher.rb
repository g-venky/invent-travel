class Broucher < ApplicationRecord
mount_uploader :document, DocumentUploader # Tells rails to use this uploader for this model.   
   validates :title, presence: true
    validates :document, presence: true # Make sure the owner's name is present. 
	#has_attached_file :document, styles: {large: "600x600>",medium: "300x300>",thumb: "150x150#"}, default_url: "/images/:style/missing.png"
#validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
	belongs_to :stall
end
