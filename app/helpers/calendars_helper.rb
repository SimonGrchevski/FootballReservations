module CalendarsHelper
  def not_reserved?(date,time)
    !Calendar.where("date = ? AND start_time = ?", date, time).present?
  end
end
