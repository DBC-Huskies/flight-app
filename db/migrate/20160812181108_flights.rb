class Flights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :name

      t.timestamps
    end
  end
end
