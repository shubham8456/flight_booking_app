class AddColumnToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :seats_booked, :integer
  end
end
