class AddThemeToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :theme, :integer
  end
end
