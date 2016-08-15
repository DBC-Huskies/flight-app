class AddFullBusinessesTable < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.integer :theme
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
