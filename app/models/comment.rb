class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :topic
	has_many :commentreplies
end
