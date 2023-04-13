class CreateProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :problems do |t|
      t.integer :user_id
      t.text :problem_description
      t.string :tags

      t.timestamps
    end
  end
end
