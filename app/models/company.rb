class Company < ApplicationRecord
	validates :website, presence: true
	validates :companyname, presence: true
	validates :region, presence: true
	validates :email, presence: true
	belongs_to :user
	has_one :stall
	before_save do
		self.region.gsub!(/[\[\]\"]/,"") if attribute_present?("region") 
	end
end
