class Booking < ApplicationRecord
  has_many :items

  validates :start_time, :end_time, presence: true
end
