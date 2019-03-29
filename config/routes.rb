Rails.application.routes.draw do

  root 'listings#listing'
  resource :listings
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user' => 'users#user'
  get 'user/new' => 'users#new'
  resource :users

end
