class UsersController < ApplicationController

  def show
    @reservations = current_user.calendars
  end
end
