class Company < ApplicationRecord
	belongs_to :user
	has_one :stall
	before_save do
		self.region.gsub!(/[\[\]\"]/,"") if attribute_present?("region") 
	end
end
