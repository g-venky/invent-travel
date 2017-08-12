class Company < ApplicationRecord
	belongs_to :user
	#devise :confirmable
end
