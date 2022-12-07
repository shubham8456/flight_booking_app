class Schedule < ApplicationRecord
  validates :flight_id, :departure, presence: true

  # for will_paginate
  self.per_page = 10

  belongs_to :flight, foreign_key: 'flight_id', primary_key: 'flight_no', optional: true
end
