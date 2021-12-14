class RemoveOrientedFieldFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :oriented, :string
  end
end
