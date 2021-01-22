Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/links', to: 'pages#links'

  resources :clubs, only: [:index, :show, :edit, :update]
  resources :sessions, only: [:index, :new]
  resources :locations, only: [:index]
end
