class HomeController < ApplicationController
	def index
		@promotions = Promotion.all


	end
	
	def home_stall


	end
	def operator

	end	
	def online_stall
		@abouts = About.all
		   @offices = Office.all

	end

end
