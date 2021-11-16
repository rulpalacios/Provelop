class CreateCreators < ActiveRecord::Migration[6.1]
  def change
    create_table :creators do |t|
      t.string :name
      t.string :about
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
