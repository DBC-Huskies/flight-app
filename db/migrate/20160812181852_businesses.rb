class Businesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :location
      t.integer :rating, default: 3

      t.timestamps
    end
  end
end
