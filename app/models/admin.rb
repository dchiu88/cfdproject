class Admin < ApplicationRecord
  has_many :employees
  has_many :timesheetreports
end
