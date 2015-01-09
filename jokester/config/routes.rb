Rails.application.routes.draw do

	resources :users

	resources :jokes do 
		resources :comments
	end

  devise_for :users
  
  root "jokes#index"
end
