class User < ApplicationRecord
	has_one  :company
	 accepts_nested_attributes_for :company
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable,:validatable
    has_many :topics
    has_many :promotions 
    has_many :my_doubts
    has_many :my_queries
  	
end
