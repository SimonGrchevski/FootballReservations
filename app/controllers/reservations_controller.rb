class ReservationsController < ApplicationController
  def destroy
    @reservation = Reservation.find(params[:id])
    @calendar = Calendar.find(@reservation.calendar_id)
    @calendar.destroy
    flash[:notice] = 'Reservation Canceled'
    redirect_to request.referrer
  end
end
