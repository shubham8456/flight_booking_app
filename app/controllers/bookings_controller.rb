class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show update destroy ]

  include BookingsHelper

  # GET /bookings or /bookings.json
  def index
    @user_bookings = current_user.bookings
  end

  # GET /bookings/1 or /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @schedule = get_schedule(new_booking_params[:id])
  end

  # GET /bookings/1/edit
  # def edit
  # end

  # POST /bookings or /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @booking.member_id = current_user.id if user_signed_in? && current_user.type === 'Member'
    seats_reqd = @booking.travellers.length

    if seats_reqd.zero?
      flash[:notice] = 'Add atleast one person.'
      redirect_to new_flight_booking_path(params[:booking][:schedule_id])
      return
    end

    if are_seats_available?(params[:booking][:schedule_id], seats_reqd)
      respond_to do |format|
        if @booking.save
          decrease_available_seats(params[:booking][:schedule_id], seats_reqd)
          format.html { redirect_to booking_url(@booking)}
          format.json { render :show, status: :created, location: @booking }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @booking.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:notice] = 'Seats are not available.'
      redirect_to root_path
    end
  end
  
  # PATCH/PUT /bookings/1 or /bookings/1.json
  # def update
  #   respond_to do |format|
  #     if @booking.update(booking_params)
  #       format.html { redirect_to booking_url(@booking), notice: "Booking was successfully updated." }
  #       format.json { render :show, status: :ok, location: @booking }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @booking.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    schedule = get_schedule_through_booking(params[:id])
    seats_to_free = @booking.travellers.length
    if @booking.destroy
      increase_available_seats(schedule, seats_to_free)
      respond_to do |format|
        format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:schedule_id, :seats_booked, travellers_attributes: [:name, :gender, :age])
  end

  def new_booking_params
    params.permit(:id)
  end
end