FactoryBot.define do
  factory :active_employee do
    last_name { '田中' }
    first_name { '太郎' }
    sequence(:email) { |n| "test_#{n}@example.com" }
    birth_date { Date.new(1990, 1, 1) }
    phone_number { '09012345678' }
    employee
  end
end
