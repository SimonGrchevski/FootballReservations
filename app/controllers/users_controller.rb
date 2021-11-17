class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @reservations = current_user.reservations
    @calendars = current_user.calendars.includes([:reservation])
  end
end
