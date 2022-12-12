module FlightData
  class Flight < ApplicationRecord
    validates :flight_no, :operator, :origin, :destination, :duration, presence: true
    validates :flight_no, uniqueness: true

    # for will_paginate
    self.per_page = 10

    has_many :schedules, foreign_key: :flight_id, primary_key: :flight_no, dependent: :destroy
  end
end