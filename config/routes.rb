Rails.application.routes.draw do
  get 'reservations/destroy'
  root 'calendars#index'
  get 'date/:date', to: 'calendars#show'
  post 'date/:date', to: 'calendars#create'
  resources :reservations
  devise_for :users
  resources :users
  
end
