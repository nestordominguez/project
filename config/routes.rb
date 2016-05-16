Rails.application.routes.draw do
  resources :companies, :categories
  resources :admin_users, only: [:index, :show, :edit, :update]
  resources :incidents do
  	collection do
  		put :update_user
  	end
  end
  devise_for :users
  root to: 'home#index'
end
