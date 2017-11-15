class MyDoubt < ApplicationRecord
	belongs_to :user

	has_many   :replies
	has_many :users, through: :replies
end
