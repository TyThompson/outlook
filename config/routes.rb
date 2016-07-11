Rails.application.routes.draw do
resources :users
resources :phones
resources :accounts, only: [:new, :create]
root to: 'users#index'
end
