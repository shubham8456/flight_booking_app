Rails.application.routes.draw do
  mount FlightData::Engine => "/flight_data"
end
