class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.text :solution_approach
      t.string :solution_link
      t.text :suggestion
      t.integer :upvotes

      t.timestamps
    end
  end
end
