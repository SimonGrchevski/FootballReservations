module CalendarsHelper
  def not_reserved?(date,time)
    !Calendar.where("date = ? AND start_time = ?", date, time).present?
  end

  def full_day
    %w[Monday Thuesday Wednesday Thursday Friday Saturday Sunday]
  end
end
