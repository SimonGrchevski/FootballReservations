class Calendar < ApplicationRecord
  has_one :reservation
  has_one :user, through: :reservation
end
