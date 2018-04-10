class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :problem_link
      t.string :solution_link
      t.text :description
      t.integer :upvotes

      t.timestamps
    end
  end
end
