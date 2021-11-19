class AddTimeToCalendar < ActiveRecord::Migration[6.1]
  def change
    add_column :calendars, :start_time, :string
    add_column :calendars, :end_time, :string
  end
end
