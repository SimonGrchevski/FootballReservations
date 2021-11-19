class AddDayToCalendar < ActiveRecord::Migration[6.1]
  def change
    add_column :calendars, :day, :string
  end
end
