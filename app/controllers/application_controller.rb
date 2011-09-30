class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :the_method_that_came_before
  
  private
    
    def grab_the_widgets
      @widgets = Widget.all
    end
    
    def the_method_that_came_before
      @active_quotes = Quote.all_active.shuffle!
    end
    
    def bomb_dot_com
      unless session[:admin_id]
        redirect_to root_path
      end
    end
    
    def move_dim_widgets
      # TODO Update the widgets
      arr = params[:order]
      array = []
      arr.each do |f|
        array << f.split(",")
      end
      @split = array
      array.each do |f|
        @widget = Widget.find(f[0])
        @widget.current_deal_order = f[1].to_i
        @widget.save
      end

        # Widget.where("? = current_deal_active", true ).update_all(["current_deal_order = ?", 2])
      # redirect_to root_path, :notice => "Changes Saved!"

    end
end
