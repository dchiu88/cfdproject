class CreateTimesheetEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :timesheet_entries do |t|
      t.datetime :date
      t.string :name
      t.string :timein
      t.string :timeout

      t.timestamps
    end
  end
end
