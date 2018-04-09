class AddRatingsSumToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ratings_sum, :integer
  end
end
