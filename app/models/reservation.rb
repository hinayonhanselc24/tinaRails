class Reservation < ApplicationRecord
  belongs_to :table
  validates :name, :email, :reservation_time, presence: true
end