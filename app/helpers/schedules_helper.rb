module SchedulesHelper

  def flight_origins_list
    FlightData::Flight.pluck(:origin).uniq
  end

  def flight_destinations_list
    FlightData::Flight.pluck(:destination).uniq
  end
  def schedules_between_start_end_date
    Schedule.where(departure: params[:start_date].to_date..(params[:end_date].to_date + 1.day)).order(departure: :asc)
  end

  def schedules_between_origin_destination(schedules)
    schedules.select { |schedule| schedule.flight.origin === params[:origin] && schedule.flight.destination === params[:destination] }
  end

  def get_total_seats(schedule)
    Flight.find_by(flight_no: schedule.flight_id).total_seats
  end

  def dates_are_invalid?
    if params[:start_date].blank? || params[:end_date].blank?
      flash[:notice] = "Please choose both 'start_date' and 'end_date'"
      true
    elsif params[:start_date].to_date < Date.today || params[:end_date].to_date < Date.today
      flash[:notice] = "You can't select past dates."
      true
    elsif params[:start_date].to_date > params[:end_date].to_date
      flash[:notice] = "'end_date' can't be less than 'start_date'"
      true
    else
      false
    end
  end
end
