class AddProfileFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :about, :string
    add_column :users, :country, :string
    add_column :users, :name, :string
    add_column :users, :role, :integer, default: 0
    add_column :users, :specialization, :string
    add_column :users, :years_of_experience, :integer
  end
end
