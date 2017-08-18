class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable,:validatable
         has_one :stall
         has_many :promotions
         has_many :reviews
         has_many :brouchers
         has_many :deals
         has_many :contacts
         has_many :abouts
         has_many :offices
         has_many :segments



before_save do
		self.region.gsub!(/[\[\]\"]/,"") if attribute_present?("region") 
	end

end
