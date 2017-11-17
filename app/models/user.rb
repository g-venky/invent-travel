class User < ApplicationRecord
	#has_one  :seller
	 acts_as_voter
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
    has_one :company
    
  has_many :notifications, foreign_key: :recipient_id
 
  	
  has_many :likes

  def likes?(promotion)

    promotion.likes.where(user_id: id).any?
  end
    def avatar_url
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}"
  end

end
