Rails.application.routes.draw do
  resources :comments
  resources :companies, :categories
  resources :admin_users, only: [:index, :show, :edit, :update]
  resources :incidents do
  	collection do
  		put :update_user
  	end
  end
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: 'home#index'
end
