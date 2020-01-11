class CreateTimesheetreports < ActiveRecord::Migration[6.0]
  def change
    create_table :timesheetreports do |t|
      t.datetime :periodstart
      t.datetime :periodend

      t.timestamps
    end
  end
end
