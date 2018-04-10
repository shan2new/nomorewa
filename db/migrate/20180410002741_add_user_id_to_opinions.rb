class AddUserIdToOpinions < ActiveRecord::Migration[5.1]
  def change
    add_reference :opinions, :user, foreign_key: true
  end
end
