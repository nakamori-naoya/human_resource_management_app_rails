class CreateActiveEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :active_employees do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.date :birth_date, null: false
      t.string :phone_number, null: false
      t.references :employee, null: false, foreign_key: true
      t.timestamps
    end
  end
end
