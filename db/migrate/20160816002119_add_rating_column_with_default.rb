class AddRatingColumnWithDefault < ActiveRecord::Migration
  def change
    add_column :businesses, :rating, :integer, default: 3
  end
end
