class AddOrientedFieldToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :oriented, :string, array: true, default: []

    add_index :events, :oriented, using: 'gin'
  end
end
