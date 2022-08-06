class ActiveEmployee < ApplicationRecord
  belongs_to :employee
  has_many :active_employee_roles, dependent: :destroy
  has_many :roles, dependent: :destroy, through: :active_employee_roles
end
