class BusinessesFlights < ActiveRecord::Migration
  def change
    create_table :businesses_flights do |t|
      t.integer :business_id
      t.integer :flight_id
    end
  end
end
