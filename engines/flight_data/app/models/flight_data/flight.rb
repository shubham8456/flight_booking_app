module FlightData
  class Flight < ApplicationRecord
    validates :flight_no, :operator, :origin, :destination, :duration, presence: true
    validates :flight_no, uniqueness: true

    # for will_paginate
    self.per_page = 10
  end
end
