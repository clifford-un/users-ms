Rails.application.routes.draw do
  resources :friends
  resources :users
  resources :tests
  resources :datamodel
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
