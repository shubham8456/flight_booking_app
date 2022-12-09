class Member < User
  has_many :bookings
  has_many :schedules, through: :bookings
end