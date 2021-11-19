class Calendar < ApplicationRecord
  has_one :reservation, dependent: :delete
  has_one :user, through: :reservation

  def self.clean_old_records
    Calendar.where('date < ?', Date.today.to_formatted_s(:db)).delete_all
  end
end
