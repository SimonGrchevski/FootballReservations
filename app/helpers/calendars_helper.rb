module CalendarsHelper
  def not_reserved?(date,time)
    !Calendar.where("date = ? AND start_time = ?", date, time).present?
  end

  def find(date,start_time)
    Calendar.find_by("date = ? AND start_time = ?", date, start_time)
  end

  def full_day
    %w[Monday Thuesday Wednesday Thursday Friday Saturday Sunday]
  end

  def day(date)
    date.inspect[0..2].to_s
  end

  def to_h(time)
    time.strftime("%H:%M")
  end

  def can_reserve?(start_time,current_date)
    !(Time.new.hour.to_s >= start_time[0..1] && Date.today.to_formatted_s(:db) >= current_date)
  end
end
