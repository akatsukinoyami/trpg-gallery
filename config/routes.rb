Rails.application.routes.draw do
  resources :properties
  namespace :admin do
    resources :characters
    resources :items
    resources :properties
    resources :relatives
    resources :skills
    resources :users, except: :index

    root to: "characters#index"
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'reg_admin', to: 'sessions#reg_admin'

  root to: "sessions#new"
end
