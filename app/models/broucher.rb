class Broucher < ApplicationRecord

	has_attached_file :document, styles: {large: "600x600>",medium: "300x300>",thumb: "150x150#"}, default_url: "/images/:style/missing.png"
validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
	belongs_to :seller
end
