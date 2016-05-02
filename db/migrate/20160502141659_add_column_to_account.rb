class AddColumnToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :zipcode, :string
    add_column :accounts, :state, :string
    add_column :accounts, :city, :string
    add_column :accounts, :employees, :integer
    remove_column :accounts, :address
  end
end
