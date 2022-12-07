class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.bigint :flight_no, null: false
      t.string :operator, null: false, default: ""
      t.string :origin, null: false, default: ""
      t.string :destination, null: false, default: ""
      t.integer :duration, null: false
      t.index :flight_no, unique: true
      t.timestamps
    end
  end
end
