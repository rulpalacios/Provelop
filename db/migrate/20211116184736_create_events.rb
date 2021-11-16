class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.float :price
      t.string :learn
      t.string :requirements
      t.string :oriented
      t.references :creator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
