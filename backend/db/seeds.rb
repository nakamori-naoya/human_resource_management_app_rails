# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i| 
  Employee.create(
    id: i,
    identifier: "a296bedc-fbda-4c6c-bc57-4cfc0863f2ce#{i}",
    classification: 'full_time',
  )
end

ActiveEmployee.create(
  id: 1,
  password: 'password',
  email: "test@example.com",
  last_name: "田中",
  first_name: "太郎",
  birth_date: Date.new(1980, 1, 1),
  phone_number: "09012345678",
  employee_id: 1
)
