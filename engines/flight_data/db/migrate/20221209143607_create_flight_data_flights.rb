class CreateFlightDataFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flight_data_flights do |t|
      t.bigint "flight_no", null: false
      t.string "operator", default: "", null: false
      t.string "origin", default: "", null: false
      t.string "destination", default: "", null: false
      t.integer "duration", null: false
      t.integer "total_seats"
      t.index ["flight_no"], name: "index_flights_on_flight_no", unique: true
      t.timestamps
    end
  end
end
