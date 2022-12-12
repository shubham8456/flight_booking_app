class AddIndexFlightIdToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :schedules, :flight_data_flights, column: :flight_id, primary_key: :flight_no
  end
end
