Rails.application.routes.draw do
  root 'calendars#index'

  resources :calendars , only: [:show, :create], param: :date
  resources :reservations
  devise_for :users
  resources :users
  
end
