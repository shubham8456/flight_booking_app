require_dependency "flight_data/application_controller"

module FlightData
  class FlightsController < ApplicationController
    before_action :flight_params, only: [:create, :update]
    # before_action :check_for_admin,  only: [:create, :update, :destroy, :new, :edit]
    before_action :set_flight_params, only: [:show, :edit]

    # GET /flights or /flights.json
    def index
      @flights = Flight.all.paginate(per_page: 10, page: params[:page])
    end

    # GET /flights/1 or /flights/1.json
    def show
    end

    # GET /flights/new
    def new
      @flight = Flight.new
    end

    # GET /flights/1
    def edit
    end

    # POST /flights or /flights.json
    def create
      @flight = Flight.new(flight_params)

      if @flight.save
        flash[:notice] = 'Flight details saved.'
        redirect_to flight_path(@flight)
      else
        flash[:notice] = 'Cannot save this flight.'
        redirect_to new_flight_path
      end
    end

    # PATCH/PUT /flights/1 or /flights/1.json
    def update
      @flight = Flight.find(params[:id])

      if @flight.update(flight_params)
        flash[:notice] = 'Flight details updated.'
        redirect_to flight_path(@flight)
      else
        flash[:notice] = 'Cannot save this flight.'
        redirect_to edit_flight_path(params[:id])
      end
    end

    # DELETE /flights/1 or /flights/1.json
    def destroy
      @flight = Flight.find(params[:id])

      if @flight.destroy
        flash[:notice] = 'The flight data has been deleted.'
        redirect_to flights_path
      else
        flash[:notice] = 'Cannot delete this flight.'
        redirect_to flight_path(@flight)
      end

    end

    private

    def flight_params
      params.require(:flight).permit(:flight_no, :operator, :origin, :destination, :duration, :total_seats)
    end

    def set_flight_params
      @flight = Flight.find(params[:id])
    end

  end
end
