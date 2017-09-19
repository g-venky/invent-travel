class Review < ApplicationRecord
	belongs_to :user
	belongs_to :stall
		before_save do
		self.rating.gsub!(/[\[\]\"]/,"") if attribute_present?("rating") 
	end
end
