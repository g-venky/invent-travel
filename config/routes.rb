Rails.application.routes.draw do
  devise_for :sellers
  resources :my_queries
  resources :abouts
  
  resources :stalls
  resources :companies
  # devise_for :companies
  resources :replies
	root to: "home#index"
  get 'home/stall'
  root  'home#stall'
  get 'home/operator'
  root 'home#operator'
  get 'home/online_stall'
  root 'home#online_stall'
	devise_for :users
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
