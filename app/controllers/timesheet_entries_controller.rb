class TimesheetEntriesController < ApplicationController

def index
end

def show
end

def new
    @timesheet_entry = TimesheetEntry.new
end

def create
  @timesheet_entry.new(timesheet_entry_params)
  if @timesheet_entry.save
    redirect_to timesheet_entry_path(@timesheet_entry)
end

private

def timesheet_entry_params
  params.require(:timesheet_entry).permit(:hours, :pto)
  end
end

end
