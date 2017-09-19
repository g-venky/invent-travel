class User < ApplicationRecord
	#has_one  :seller
	 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable,:validatable
    has_many :topics
    has_many :my_doubts
    has_many :my_queries
    has_many :reviews
    has_one :profile
    has_many :contacts
 
  	
end
