class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @reservations = current_user.reservations
    @calendars = current_user.calendars.includes([:reservation])
  end

  def edit_name; end

  def edit_password; end

  def edit_email; end

  def update; end
end
