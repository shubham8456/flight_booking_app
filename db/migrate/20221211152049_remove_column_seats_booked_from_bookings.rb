class RemoveColumnSeatsBookedFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :seats_booked
  end
end
