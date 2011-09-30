module ApplicationHelper
  def title
    @base = "Big Block Deals"
    @title = @title ? "#{@base} | #{@title}" : "#{@base}"
    return @title
  end
  
  def special_date(date_obj)
    date_obj.strftime("%b #{date_obj.day.ordinalize}, %Y")
  end
  
  def admin?
    if session[:admin_id]
      @out = true
    end
  end
end
