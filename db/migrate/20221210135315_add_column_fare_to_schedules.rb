class AddColumnFareToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :ticket_price, :decimal
  end
end
