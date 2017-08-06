Rails.application.routes.draw do
  resources :replies
	root to: "home#index"
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
