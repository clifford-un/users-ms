Rails.application.routes.draw do
  
  get "see_friends", to: "friends#get_friends"
  get "accept", to: "friend_requests#accept"
  get "deny", to: "friend_requests#deny"
  get "see_requests", to: "friend_requests#request_list"
  resources :friends
  resources :users
  resources :tests
  resources :datamodel
  resources :friend_requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
