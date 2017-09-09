class MyQuery < ApplicationRecord
	belongs_to :user
	has_many :quotes
end
