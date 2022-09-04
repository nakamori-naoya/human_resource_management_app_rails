class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :identifier, null: false, index: { unique: true }
      t.string :classification, null: false
      t.timestamps
    end
  end
end
