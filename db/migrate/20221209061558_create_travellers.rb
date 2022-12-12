class CreateTravellers < ActiveRecord::Migration[5.2]
  def change
    create_table :travellers do |t|
      t.references :booking, foreign_key: true
      t.string :name
      t.string :gender
      t.integer :age
    end
  end
end
