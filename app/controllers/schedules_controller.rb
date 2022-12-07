class SchedulesController < ApplicationController
    before_action :schedule_params, only: %i[create update]
    before_action :check_for_admin,  only: %i[create update destroy new edit]
    before_action :set_schedule_params, only: %i[show edit]

    # GET /schedules or /schedules.json
    def index
        @schedules = Schedule.all.paginate(per_page: 10, page: params[:page])
        @schedule = Schedule.new
    end

    # GET /schedules/:id
    def show
    end

    # GET /schedules/new
    def new
        @schedule = Schedule.new
    end

    # GET /schedules/:id
    def edit
    end

    # POST /schedules
    def create
        @schedule = Schedule.new(schedule_params)

        if @schedule.save
            flash[:notice] = 'Schedule details saved.'
            redirect_to schedule_path(@schedule)
        else
            flash[:notice] = 'Cannot save this schedule.'
            redirect_to new_schedule_path
        end
    end

    # PATCH/PUT /schedules/:id
    def update
        @schedule = Schedule.find(params[:id])

        if @schedule.update(schedule_params)
            flash[:notice] = 'Flight schedule updated.'
            redirect_to schedule_path(@schedule)
        else
            flash[:notice] = 'Cannot save this schdedule.'
            redirect_to edit_schedule_path(params[:id])
        end
    end

    # DELETE /schedules/:id
    def destroy
        @schedule = Schedule.find(params[:id])

        if @schedule.destroy
            flash[:notice] = 'The schedule has been deleted.'
            redirect_to schedules_path
        else
            flash[:notice] = 'Cannot delete this schedule.'
            redirect_to schedule_path(@schedule)
        end
    end

    # GET /search
    def search
       if params[:start_date].blank? || params[:end_date].blank?
           flash[:notice] = 'Please select start date and end date.'
           redirect_to schedules_path
       else
           @schedules = Schedule.where(departure: params[:start_date].to_date..(params[:end_date].to_date + 1.day)).order(departure: :asc)
           @result_schedules = @schedules.select { |schedule| schedule.flight.origin === params[:origin] && schedule.flight.destination === params[:destination] }
       end
    end

    private

    def schedule_params
        params.require(:schedule).permit(:flight_id, :departure)
    end

    def set_schedule_params
        @schedule = Schedule.find(params[:id])
    end
end
