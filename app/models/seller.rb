class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable,:validatable
       
         has_one :stall
      
         has_one :profile



before_save do
		self.region.gsub!(/[\[\]\"]/,"") if attribute_present?("region") 
	end

end
