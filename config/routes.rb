Rails.application.routes.draw do
  resources :comments, :categories
  resources :admin_users, only: [:index, :show, :edit, :update]
  resources :companies do
    collection do
      put :update_admin
    end
  end
  resources :incidents do
  	collection do
  		put :update_user
  	end
  end
  devise_for :admins, controllers: { registrations: 'admins/registrations' }
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: 'home#index'
end
