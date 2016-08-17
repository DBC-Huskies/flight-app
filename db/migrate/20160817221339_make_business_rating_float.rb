class MakeBusinessRatingFloat < ActiveRecord::Migration
  def change
    remove_column :businesses, :rating
    add_column :businesses, :average_rating, :float, default: 3
  end
end
