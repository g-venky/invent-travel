class Company < ApplicationRecord
	belongs_to :user
	#has_many :promotions,through: :user
	#devise :confirmable
end
