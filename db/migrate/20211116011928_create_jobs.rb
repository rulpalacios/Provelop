class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :organization
      t.string :dates
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
