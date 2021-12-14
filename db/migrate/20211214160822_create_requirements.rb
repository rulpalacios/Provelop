class CreateRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :requirements do |t|
      t.references :event, null: false, foreign_key: true
      t.string :requirement

      t.timestamps
    end
  end
end
