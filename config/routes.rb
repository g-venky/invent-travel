Rails.application.routes.draw do

  resources :segments
  resources :offices
  resources :deals
  resources :brouchers
  resources :reviews
   resources :contacts
   resources :abouts

  devise_for :users, path: 'users', controllers: { sessions: "users/sessions" }  

  devise_for :sellers, path: 'sellers', controllers: { sessions: "sellers/sessions" } 
 
 

  resources :my_queries
  
  resources :stalls
  resources :companies
 
  resources :replies
	root to: "home#index"
  get 'home/stall'
  root  'home#stall'
  get 'home/operator'
  root 'home#operator'
  get 'home/online_stall'
  root 'home#online_stall'
	
  	resources :topics do
    	member do
     	 	put "like",    to:    "topics#upvote"
      		put "dislike", to:    "topics#downvote"
    	end
   		resources :comments
   	end
	resources :promotions do
    	member do
      		put "like",    to:    "promotions#upvote"
      		put "dislike", to:    "promotions#downvote"
    	end
   	end
  	resources :my_doubts do
  		resources :replies
  	end
  
end

  