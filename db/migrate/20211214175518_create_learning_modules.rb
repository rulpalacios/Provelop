class CreateLearningModules < ActiveRecord::Migration[6.1]
  def change
    create_table :learning_modules do |t|
      t.string :name
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
