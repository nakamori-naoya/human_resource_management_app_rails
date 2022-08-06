class CreateActiveEmployeeRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :active_employee_roles do |t|

      t.timestamps
    end
  end
end
