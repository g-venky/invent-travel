class Stall < ApplicationRecord
	has_many :promotions
	has_many :brouchers
	has_many :reviews

	belongs_to :company
	#belongs_to :user

	has_attached_file :image, styles: {large: "300x300>",medium: "200x400>",thumb: "60x80#"}, default_url: "/images/:style/upload_image.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	before_save do
		self.segments.gsub!(/[\[\]\"]/,"") if attribute_present?("segments") 
	end
	has_attached_file :avatar, styles: {large: "300x300>", medium: "100x100", thumb: "40x50" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

 
end
