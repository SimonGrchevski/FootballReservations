class CalendarsController < ApplicationController
  def index
  end

  def show
    @date = params[:date][3..]
    @open = Tod::TimeOfDay.new 8
    @close = Tod::TimeOfDay.new 21
    @current = @open
    @day = params[:date][0..2]
  end

  def create
    @calendar= Calendar.create(calendar_params)
    @res = Reservation.create(calendar_id: @calendar.id, user_id: current_user.id )
    if @res.save && @calendar.save
      flash[:notice] = "Reserved"
      redirect_to request.referrer
    end
  end

  def calendar_params 
    params.permit(:date,:start_time,:end_time, :day)
  end
end
