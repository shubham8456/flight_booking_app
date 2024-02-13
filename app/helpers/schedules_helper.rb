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

  def display_if_admin
    yield if user_signed_in? && current_user.type === 'Admin'
  end

  def display_if_user
    yield if user_signed_in? && current_user.type === 'Member'
  end

  def pagination_index(page_params)
    return 1 if page_params.nil?
    ((page_params.to_i - 1) * 10) + 1
  end
  # def show_all_bookings_if_user
  #   content = ''
  #   if user_signed_in? && current_user.type === 'Member'
  #     content << "<a href='#{bookings_path}' class='btn btn-dark'>See all your bookings</a>"
  #   end
  #   content.html_safe
  # end
  #
  # def show_add_bookings_schedules_buttons_if_admin
  #   content = ''
  #   if user_signed_in? && current_user.type === 'Admin'
  #     content << "<a href='#{new_schedule_path}' class='btn btn-dark mx-2'>Add new schedule</a>
  #                 <a href='#{flight_data.new_flight_path}' class='btn btn-secondary mx-2'>Add new flight</a>"
  #   end
  #   content.html_safe
  # end

end
