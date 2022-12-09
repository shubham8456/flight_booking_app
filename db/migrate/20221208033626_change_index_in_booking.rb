class ChangeIndexInBooking < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :user
    add_reference :bookings, :member
  end
end
