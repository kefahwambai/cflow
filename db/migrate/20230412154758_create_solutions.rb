class CreateSolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :solutions do |t|
      t.integer :problem_id
      t.integer :user_id
      t.text :solution_description
      t.string :tags
      t.boolean :highlighted_by

      t.timestamps
    end
  end
end
