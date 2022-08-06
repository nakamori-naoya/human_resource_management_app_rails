class Role < ApplicationRecord
  has_many :active_employees, through: :active_employee_roles
  has_many :active_employee_roles, dependent: :destroy
  has_one :personal_right_role , dependent: :destroy
end
