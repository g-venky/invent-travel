class HomeController < ApplicationController
	  
	def index
		    session[:conversations] ||= []
 
    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])


		
		@promotions = Promotion.all


	end
	
	def home_stall


	end
	def operator

	end	
	def online_stall
		@promotions = Promotion.where(@seller)
		@abouts = About.all
		   @offices = Office.all

	end

end
