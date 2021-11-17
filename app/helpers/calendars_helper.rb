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
end
