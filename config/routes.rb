Rails.application.routes.draw do
  root 'calendars#index'
  get 'date/:date', to: 'calendars#show'
  post 'date/:date', to: 'calendars#create'
  # delete 'date/:date/:delete_calendar/:id', to: 'calendars#destroy', as: 'delete_calendar'
  # resources :calendar, only: [:delete]
  devise_for :users
end
