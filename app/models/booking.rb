class Booking < ApplicationRecord
  belongs_to :member
  belongs_to :schedule
end
