module AdminsHelper
  def super_user?
    @current_user = Admin.find(session[:admin_id])
    @current_user.super_user?
  end
end
