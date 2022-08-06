class CreatePersonalRightRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_right_roles do |t|

      t.timestamps
    end
  end
end
