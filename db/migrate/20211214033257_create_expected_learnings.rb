class CreateExpectedLearnings < ActiveRecord::Migration[6.1]
  def change
    create_table :expected_learnings do |t|
      t.string :learning
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
