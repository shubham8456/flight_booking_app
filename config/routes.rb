Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks:'users/unlocks',
    confirmations:'users/confirmations'
  }

  resources :bookings, except: :new
  resources :schedules
  resources :flights

  root 'schedules#index'

  get 'search', to: 'schedules#search', as: 'search_schedules'
  delete 'flights/:id', to: 'flights#destroy', as: 'destroy_flight'
  delete 'schedules/:id', to: 'schedules#destroy', as: 'destroy_schedule'
  get 'bookings/:id/new', to: 'bookings#new', as: 'new_flight_booking'
end
