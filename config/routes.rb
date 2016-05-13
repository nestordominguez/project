Rails.application.routes.draw do
  resources :incidents do
  	collection do
  		put :update_user
  	end
  end
  devise_for :users
  root to: 'home#index'
end
