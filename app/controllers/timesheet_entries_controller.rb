class TimesheetEntriesController < ApplicationController

def index
end

def show
  @timesheet_entry = TimesheetEntry.find_by(id: params[:id])
    if !@timesheet_entry
      redirect_to timesheet_entry_path(@timesheet_entry)
    end
end

def new
    @timesheet_entry = TimesheetEntry.new
end

def create
  @timesheet_entry = TimesheetEntry.new(timesheet_entry_params)
  if @timesheet_entry.save
    redirect_to timesheet_entry_path(@timesheet_entry)
  else
    flash[:error] = "Didn't save"
    render 'new'
  end
end

private

def timesheet_entry_params
  params.require(:timesheet_entry).permit(:date, :name, :timein, :timeout)
end
end
