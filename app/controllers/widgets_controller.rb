class WidgetsController < ApplicationController
  
  uses_tiny_mce(:options => {
    :theme => 'advanced',
    :height => '220',
    :width => '100%',
    :theme_advanced_buttons1 => "bold,italic,underline,separator,strikethrough,justifyleft,justifycenter,justifyright,justifyfull,separator,bullist,numlist,",
    :theme_advanced_buttons2 => "link, unlink, spellchecker,separator,sub,sup,image",
    :theme_advanced_buttons3 => "",
    :plugins => %w{contextmenu paste spellchecker},
    :spellchecker_languages => "+English=en",
  })
  
  def index
    @widgets = Widget.all
    @layout = 'full-width'
  end
  
  def new
    @widget = Widget.new
  end
  
  def create
    @widget = Widget.new(params[:widget])
    if @widget.valid?
      @widget.save
      redirect_to widgets_path, :notice => "Your widget was saved." # Laudie frickin dah!"
    else  
      render "new"
    end
  end
  
  def show
    @widget = Widget.all
    @page = "good_read"
  end
  
  def edit
    @widget = Widget.find(params[:id])
  end
  
  def update
    @widget = Widget.find(params[:id])
    if @widget.update_attributes(params[:widget])
      if params[:widget][:image_delete] == true
        @widget.image_delete
        @widget.save
      end
      redirect_to widgets_path, :notice => "Changes saved!"
    else
      render "edit"
    end
  end
  
  def move_dim_widgets
    @layout = "edit-page"
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
  
  
  def destroy
    @widget = Widget.find(params[:id])
    @widget.destroy
    redirect_to manage_widgets_path, :notice => "Your Widget has been deleted."
  end
  
end
