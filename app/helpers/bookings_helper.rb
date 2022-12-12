module BookingsHelper

  def are_seats_available? (schedule_id, seats_reqd)
    return true if Schedule.find(schedule_id).available_seats >= seats_reqd.to_i
    false
  end

  def decrease_available_seats(schedule_id, seats_reqd)
    schedule = Schedule.find(schedule_id)
    schedule.available_seats -= seats_reqd.to_i
    schedule.save
  end

  def increase_available_seats(schedule, seats_to_free)
    schedule.available_seats += seats_to_free.to_i
    schedule.save
  end

  def get_schedule(schedule_id)
    Schedule.find(schedule_id)
  end

  def get_schedule_through_booking(booking_id)
    Booking.find(booking_id).schedule
  end
end
