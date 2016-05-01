class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.float :time, null:false
      t.belongs_to :customer
      t.belongs_to :employee
      t.timestamps null: false
    end
  end
end
