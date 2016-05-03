class AddMoney < ActiveRecord::Migration
  def change
    add_column :account_entries, :amount, :decimal
  end
end
