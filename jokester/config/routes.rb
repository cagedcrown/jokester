Rails.application.routes.draw do
  devise_for :users
  root "jokes#index"
end
