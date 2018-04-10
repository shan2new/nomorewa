class AddOpinionIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :opinion, foreign_key: true
  end
end
