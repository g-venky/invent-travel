class Stall < ApplicationRecord
	belongs_to :seller
	has_many :promotions
	has_attached_file :image, styles: {large: "600x600>",medium: "300x300>",thumb: "150x150#"}, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	before_save do
		self.segments.gsub!(/[\[\]\"]/,"") if attribute_present?("segments") 
	end
end
