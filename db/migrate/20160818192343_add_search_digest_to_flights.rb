class AddSearchDigestToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :search_digest, :string, index: true
  end
end
