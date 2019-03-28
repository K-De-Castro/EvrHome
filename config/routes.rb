Rails.application.routes.draw do

  root 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user' => 'users#user'
  get 'user/new' => 'users#new'
  get 'listing' => 'listing#listing'
  resource :users
end
