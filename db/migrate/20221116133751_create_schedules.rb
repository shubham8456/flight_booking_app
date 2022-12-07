class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.datetime :departure, null: false
      t.bigint :flight_id
      t.timestamps
    end
  end
end
