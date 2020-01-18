class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.valid?
      @admin.save
      session[:admin_id] = @admin.id
      redirect_to admin_path(@admin)
    else
      render :new
    end
  end

  def show
    @admin = Admin.find_by(params[:id])
  end

  private

  def admin_params
    params.require(:admin).permit(:username, :password)
  end

end
