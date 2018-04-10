class AddIssueIdToOpinions < ActiveRecord::Migration[5.1]
  def change
    add_reference :opinions, :issue, foreign_key: true
  end
end
