class ActiveEmployeeRole < ApplicationRecord
  belongs_to :active_employee
  belongs_to :role
end
