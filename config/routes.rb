Rails.application.routes.draw do
resources :users
resources :phones
resources :account_forms, only: [:new, :create]
root to: 'users#index'
end
