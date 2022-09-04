class CreateActiveEmployeeRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :active_employee_roles do |t|
      t.references :active_employee, foreign_key: true, null: false
      t.references :role, foreign_key: true, null: false
      t.timestamps
    end
  end
end
