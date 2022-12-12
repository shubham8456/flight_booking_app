FlightData::Engine.routes.draw do
  resources :flights

  delete 'flight_data/flights/:id', to: 'flights#destroy', as: 'destroy_flight'
end
