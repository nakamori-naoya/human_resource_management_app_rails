require 'rails_helper'

RSpec.describe PersonalRightRole, type: :model do
  let!(:employee){create(:employee)}
  let!(:active_employee){create(:active_employee, employee: employee)}
  let!(:role){create(:role)}
  let!(:active_employee_role){create(:active_employee_role, active_employee: active_employee, role: role)}
  let!(:personal_right_role){create(:personal_right_role, role: role)}
end
