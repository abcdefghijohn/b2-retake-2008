class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :number
      t.date :date
      t.string :departure_city
      t.string :arrival_city

      t.timestamps
    end
  end
end
