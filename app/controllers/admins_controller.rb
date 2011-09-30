class AdminsController < ApplicationController
  before_filter :bomb_dot_com
  before_filter :super_users_only, :except => [:index]
  
  def new
    @title = "Create a new Administrator"
    @admin = Admin.new
  end
  
  def create
    @admin = Admin.new( params[:admin] )
    if @admin.valid?
      @admin.save
      redirect_to admins_path
    else
      render "new"
    end
    
  end
  
  def index
    @title = "Administrators"
    @admins = Admin.special_select
  end
  
  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to admins_path, :notice => "Password Changed"
    else
      render "edit"
    end
  end
  
  def destroy
    if params[:id] == session[:admin_id].to_s
      redirect_to admins_path, :notice => "You can't delete yourself silly..."
    else
      @admin = Admin.find(params[:id])
      if @admin.destroy
        redirect_to admins_path, :notice => "#{@admin.email} has been removed from the admins"
      else
        @admins = Admin.special_select
        render :index
      end
    end
  end
  
  private
    def super_users_only
      @current_user = Admin.find(session[:admin_id])
      unless @current_user.super_user?
        redirect_to admins_path, :notice => "You do not have rights to this page"
      end
    end
  
end
