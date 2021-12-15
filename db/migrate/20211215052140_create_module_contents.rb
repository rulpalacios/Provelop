class CreateModuleContents < ActiveRecord::Migration[6.1]
  def change
    create_table :module_contents do |t|
      t.references :learning_module, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
