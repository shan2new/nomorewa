class AddUserQualityToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_quality, :integer
  end
end
