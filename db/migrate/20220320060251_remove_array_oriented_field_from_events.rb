class RemoveArrayOrientedFieldFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :oriented, :string
  end
end
