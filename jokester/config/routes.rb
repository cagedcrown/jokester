Rails.application.routes.draw do

	resources :users

	resources :jokes do 
		resources :comments
	end
	
	root "jokes#index"
  
  devise_for :users
  
end
