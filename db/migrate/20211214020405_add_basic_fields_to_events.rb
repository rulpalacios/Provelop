class AddBasicFieldsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :modality, :string
    add_column :events, :event_type, :string
    add_column :events, :specialization, :string
  end
end
