Rails.application.routes.draw do
  namespace :admin do
    resources :characters
    resources :races
    resources :professions
    resources :items
    resources :properties
    resources :relatives
    resources :skills
    resources :users
    resources :sessions

    root to: "characters#index"
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'reg_admin', to: 'sessions#reg_admin'

  root to: "sessions#new"
end
