class RemoveTimeFromCalendar < ActiveRecord::Migration[6.1]
  def change
    remove_column :calendars, :start_time, :string
    remove_column :calendars, :end_time, :string
  end
end
