Rails.application.routes.draw do
  resources :incidents
  devise_for :users
  root to: 'home#index'
end
