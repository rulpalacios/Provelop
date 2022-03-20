class AddOrientedFieldLikeSimpleStringInEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :oriented, :string
  end
end
