Rails.application.routes.draw do
  root to: 'calendars#index'
  resources :calendars , only: [:show, :create], param: :date
  resources :reservations
  devise_for :users 
  resources :users

end
