class HomeController < ApplicationController

	def index
		    session[:conversations] ||= []
 
    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])


		   @promotions=Promotion.order(created_at: :desc)
		@topics = Topic.all
	 @users=User.order(created_at: :desc).limit(15)
		
	end
	
	def home_stall
	end

	def operator
		
	end	
	def online_stall


	end



end
