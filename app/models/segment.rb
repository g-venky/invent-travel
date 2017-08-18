class Segment < ApplicationRecord
	belongs_to :seller
	before_save do
		self.travelsegments.gsub!(/[\[\]\"]/,"") if attribute_present?("travelsegments") 
	end
end
