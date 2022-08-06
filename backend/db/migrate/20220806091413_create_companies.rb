class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :identifier, null: false, index: { unique: true }
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :email, null: false, index: { unique: true }
      t.timestamps
    end
  end
end
