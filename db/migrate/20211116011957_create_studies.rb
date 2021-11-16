class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.string :title
      t.string :institution
      t.string :dates
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
