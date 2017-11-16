class Topic < ApplicationRecord
	
	belongs_to :user
	has_many :comments
	has_many :users, through: :comments

	validates :discussions, presence: true
	validates :details, presence: true

end
