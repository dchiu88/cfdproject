class Admin < ApplicationRecord
  has_many :employees
  has_many :timesheetreports
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
end
