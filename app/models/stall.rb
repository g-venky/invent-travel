class Stall < ApplicationRecord
	belongs_to :seller
	
	before_save do
		self.segments.gsub!(/[\[\]\"]/,"") if attribute_present?("segments") 
	end
end
