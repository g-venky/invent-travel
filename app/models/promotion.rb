class Promotion < ApplicationRecord
	has_attached_file :image, styles: {large: "600x600>",medium: "300x300>",thumb: "150x150#"}, default_url: ""
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	acts_as_votable

	belongs_to :stall
	has_many :usefuls
	has_many :likes
	validates :details, presence: true
	validates :destination, presence: true
end
