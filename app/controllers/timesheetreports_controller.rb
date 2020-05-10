class TimesheetreportsController < ApplicationController

def index
end

def show
  #enter logic here to find related time sheet entries by periodend
  @timesheetreport = Timesheetreport.find_by(id: params[:id])
  @timesheetentry = TimesheetEntry.where("date >= ? AND date <= ?", params[:periodstart], params[:periodend])
  if !@timesheetreport
    redirect_to timesheetreport_path(@timesheetreport)
  # @timesheet_entry.where(timesheet_entry :date > timesheetreport :startdate and timesheet_entry < enddate)
end
end

def new
  @timesheetreport = Timesheetreport.new
end

def create
  @timesheetreport = Timesheetreport.new(timesheetreport_params)
  if @timesheetreport.save
    redirect_to timesheetreport_path(@timesheetreport)
  end
end


private

def timesheetreport_params
  params.require(:timesheetreport).permit(:periodstart,:periodend)
end

end
