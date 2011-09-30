class SessionsController < ApplicationController
  before_filter :bomb_dot_com, :except => [:new, :create]
  
  def new
    @title = "Administrator Login"
  end

  def create
    admin = Admin.authenticate(params[:email].downcase, params[:password])
    if admin
      session[:admin_id] = admin.id
      redirect_to admins_path, :notice => "Logged In"
    else
      flash.now.alert = "Invalid authentication credentials"
      render "new"
    end
  end
  
  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end
end