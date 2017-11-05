Rails.application.routes.draw do

  

    resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
  resources :companies
  resources :segments
  resources :offices
  resources :deals
  resources :brouchers
  resources :reviews
   resources :contacts
   resources :abouts

  devise_for :users, path: 'users', controllers: { sessions: "users/sessions" }  

  devise_for :sellers, path: 'sellers', controllers: { sessions: "sellers/sessions" } 

 
 resources :contacts
  resources :replies
  resources :quotes

  resources :my_queries do
    resources :quotes
  end
    resources :profiles
  resources :stalls do
    resources :promotions ,only: [:index]
    resources :brouchers
    resources :reviews
    resources :contacts
  end
#post '/contact' => 'profiles#contact', as: :contact
#get '/contacts' => 'profiles#contacts', as: :contacts
get 'stalls/:id/stall_promotions' => 'stalls#stall_promotions', :as => :custom_stall_promotions
get 'stalls/:id/stall_brouchers' => 'stalls#stall_brouchers', :as => :custom_stall_brouchers
get 'stalls/:id/stall_reviews' => 'stalls#stall_reviews', :as => :custom_stall_reviews
get 'stalls/:id/stall_contacts' => 'stalls#stall_contacts', :as => :custom_stall_contacts
#get 'stalls/:id/stall_my_doubts' => 'stalls#stall_my_doubts', :as => :custom_stall_my_doubts
get 'my_doubts/:id/my_doubt_doubts' => 'my_doubts#my_doubt_doubts', :as => :custom_my_doubt_doubts
get 'my_queries/:id/my_query_queries' => 'my_queries#my_query_queries', :as => :custom_my_query_queries
  
	root to: "home#index"
  get 'home/stall'
  root  'home#stall'
  get 'home/operator'
  root 'home#operator'
  get 'home/online_stall'
  root 'home#online_stall'

	     resources :comments #do
    #resources :commentreplies
  #end
      
  	resources :topics do
   		resources :comments do
        resources :commentreplies
      end
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

  