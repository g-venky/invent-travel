class MyQuery < ApplicationRecord
	 validates :pax, presence: true
	  validates :destination, presence: true
	   validates :child, presence: true
	    validates :duration, presence: true
	   
	belongs_to :user
	has_many :quotes
end
