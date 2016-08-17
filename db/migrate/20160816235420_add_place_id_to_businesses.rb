class AddPlaceIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :google_place_id, :string
  end
end
