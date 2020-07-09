Rails.application.routes.draw do

  
  devise_for :accounts
  get 'drinks/index'
  get 'drinks', to:'drinks#index'
  get 'drinks/login_check'
  get 'gins/find'
  post 'gins/find'
  get 'rums/find'
  post 'rums/find'
  get 'vodkas/find'
  post 'vodkas/find'
  get 'tequilas/find'
  post 'tequilas/find'
  resources :tequilas
  resources :rums
  resources :vodkas
  resources :gins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
