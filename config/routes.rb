Rails.application.routes.draw do
  get 'users/show'
  
  resources :comments
  devise_for :users
  resources :topics do
    member do
      put "like",    to:    "topics#upvote"
      put "dislike", to: "topics#downvote"
    end
   resources :comments
   end

  root to: "topics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
