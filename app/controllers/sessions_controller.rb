class SessionsController < ApplicationController

def index
end

def new
end

def create
  #find the user
  @user = User.find_by(username:params[:user][:username])
  #if we find something and they have the right password
  if @user && @user.authenticate(params[:user][:password])
    session[:admin_id] = @admin.id
    redirect_to admin_path(@admin)
  else
    flash[:message] = "Sorry, please try again"
    redirect_to login_path
end
end

def destroy
  session.clear
  redirect_to root_path
end

end
