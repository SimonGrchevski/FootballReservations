class ReservationsController < ApplicationController
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:notice] = "Reservation Canceled"
    redirect_to request.referrer
  end
end
