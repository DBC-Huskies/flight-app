class AddThemeToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :theme, :integer
  end
end
