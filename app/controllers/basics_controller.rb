class BasicsController < ApplicationController

  BASIC_CONTROLLERS.each do |f|
  define_method(f.first) {
    @content = ActiveRecord.const_get(f.last[:model]).last
    @layout = f.last[:layout]
    @title = f.last[:title]
    @action = f.first
    @loaddc = f.last[:loaddc]
    @page = f.last[:form]
    @widget_order = f.last[:widget_order]
    unless f.last[:layout] == "full-width"
      @widgets = Widget.find(:all, :conditions=>["#{f.last[:form].to_s + "_active"}=?", true], :order => f.last[:widget_order]) 
    end
  }
  end

end