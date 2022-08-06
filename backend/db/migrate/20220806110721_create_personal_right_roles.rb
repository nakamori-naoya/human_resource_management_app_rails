class CreatePersonalRightRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_right_roles do |t|
      t.references :role, foreign_key: true, null: false
      t.references :name, null: false
      t.timestamps
    end
  end
end
