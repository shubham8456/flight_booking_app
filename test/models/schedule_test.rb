require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  test 'should not save schedule without flight_id' do
    schedule = Schedule.new
    schedule.departure = DateTime.current
    assert_not schedule.save, 'Saved the schedule without the flight_id.'
  end
end
