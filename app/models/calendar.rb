class Calendar < ApplicationRecord
  has_one :reservation
  has_one :user, through: :reservation

  def delete_old
    Calendar.where('date < ?',Date.today.to_formatted_s(:db) ).delete_all
  end
end
