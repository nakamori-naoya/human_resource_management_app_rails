class Employee < ApplicationRecord
  include Identifier
  has_one :active_employee
end
