Rails.application.routes.draw do
  root 'calendars#index'
  get 'date/:date', to: 'calendars#show'
  post 'date/:date', to: 'calendars#create'
  devise_for :users
end
