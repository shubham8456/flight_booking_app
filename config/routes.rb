Rails.application.routes.draw do

  resources :bookings
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks:'users/unlocks',
    confirmations:'users/confirmations'
  }

  root 'schedules#index'
  get 'search', to: 'schedules#search', as: 'search_schedules'
  delete 'flights/:id', to: 'flights#destroy', as: 'destroy_flight'
  delete 'schedules/:id', to: 'schedules#destroy', as: 'destroy_schedule'

  resources :schedules
  resources :flights
end
