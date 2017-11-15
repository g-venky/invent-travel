class Topic < ApplicationRecord
	acts_as_votable
	belongs_to :user
	has_many :comments
	 has_many :users, through: :comments
end
