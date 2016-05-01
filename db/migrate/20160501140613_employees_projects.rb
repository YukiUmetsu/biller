class EmployeesProjects < ActiveRecord::Migration
  def change
    create_table :employees_projects do |t|
      t.belongs_to :employee
      t.belongs_to :project

      t.timestamps
    end
  end
end
