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

  def get_schedule(schedule_id)
    Schedule.find(schedule_id)
  end
end
