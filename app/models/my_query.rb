class MyQuery < ApplicationRecord
	 
	  validates :destination, presence: true
	  
	    validates :duration, presence: true
	   
	belongs_to :user
	has_many :quotes
end
