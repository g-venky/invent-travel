class Profile < ApplicationRecord
	belongs_to :user
		has_attached_file :image, styles: {large: "600x600>",medium: "300x300>",thumb: "150x150#"}, default_url: ""
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
		before_save do
		self.segments.gsub!(/[\[\]\"]/,"") if attribute_present?("segments") 
	end
		 validates :organization, presence: true
	  validates :designation, presence: true
	   validates :segments, presence: true
	    validates :branches, presence: true
	    	 validates :website, presence: true
	  validates :employees, presence: true
	   validates :firstname, presence: true
	    validates :lastname, presence: true
	    	    	 validates :aboutus, presence: true
	
end
