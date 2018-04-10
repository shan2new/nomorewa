class AddIssueIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :issue, foreign_key: true
  end
end
