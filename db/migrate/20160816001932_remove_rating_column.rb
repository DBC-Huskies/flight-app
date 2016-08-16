class RemoveRatingColumn < ActiveRecord::Migration
  def change
    remove_column :businesses, :rating, :integer
  end
end
