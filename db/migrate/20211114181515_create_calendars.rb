class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
