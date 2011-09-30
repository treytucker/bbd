class GoodReadsController < ApplicationController
  before_filter :bomb_dot_com, :except => [:index, :show, :show_categories, :show_dates]
  uses_tiny_mce(:options => {
    :theme => 'advanced',
    :height => '420',
    :width => '100%',
    :theme_advanced_buttons1 => "bold,italic,underline,separator,strikethrough,justifyleft,justifycenter,justifyright,justifyfull,separator,bullist,numlist,outdent,indent,separator,cut,copy,paste,undo,redo,cleanup",
    :theme_advanced_buttons2 => "link, unlink, spellchecker, removeformat,formatselect,fontsizeselect,separator,sub,sup,forecolor,backcolor,forecolorpicker,backcolorpicker,image",
    :theme_advanced_buttons3 => "",
    :plugins => %w{contextmenu paste spellchecker},
    :spellchecker_languages => "+English=en",
  })
  
  def index
    @posts = GoodRead.order("created_at DESC").page(params[:page]).per(5)
    @title = "BBD Blog"
    @page = "good_read"
    @categories = gather_thine_categories
    @dates = gather_thine_dates
    @layout = "blog"
    @widgets = Widget.where("? = good_read_active", true).order(:good_read_order)
  end
  
  def manage
    @posts = GoodRead.order("created_at DESC").all
    @title = "Manage BBD Blog"
    @categories = gather_thine_categories
    @dates = gather_thine_dates
    @layout = "blog"
    @widgets = "No widgets for the Blog"
  end

  def show
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    @title = "BBD Blog | #{@post.created_at.to_s(:good_reads_title)}"
    @widgets = Widget.all
    @page = "good_read"
  end

  def show_categories
    @layout = "blog"
    @category = Category.find_by_name(params[:id])
    @page = "good_read"
    @widgets = Widget.where("? = good_read_active", true).order(:good_read_order)
    @categories = gather_thine_categories
    @dates = gather_thine_dates
    if @category.good_reads.nil?
      redirect_to good_reads_path, :notice => "There is no category named #{params[:id]}"
    else
      @posts = @category.good_reads
    end
  end
  
  # FIXME Move to the model(Needs refactoring)
  def show_dates
    @layout = "blog"
    @widgets = Widget.where("? = good_read_active", true).order(:good_read_order)
    @categories = gather_thine_categories
    @dates = gather_thine_dates
    if params[:year]
      if params[:month]
        @month = "01 #{params[:month]} #{params[:year]}".to_date
        @posts = GoodRead.all(:conditions => ["created_at >= ? AND created_at <= ?", @month.at_beginning_of_month, @month.at_end_of_month])
        render :show_categories
      else
        @year = "01 Jan #{params[:year]}".to_date
        @posts = GoodRead.all(:conditions => ["created_at >= ? AND created_at <= ?", @year.at_beginning_of_year, @year.at_end_of_year])
        render :show_categories
      end
    end
  end
  
  def new
    @post = GoodRead.new
    @title = "BBD Blog | New"
    @categories = Category.list_names
  end

  def create
    @post = GoodRead.new(params[:good_read])
    if @post.save
      redirect_to :bbd_blog, :notice => "Post saved"
    else
      @post.errors.each do |e|
        puts e
      end
      render :new, :alert => "didn't work"
    end
  end

  def edit
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    @title = "BBD Blog | Edit #{@post.created_at.to_s(:good_reads_title)}"
    @categories = gather_thine_categories
  end

  def update
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    if @post.update_attributes(params[:good_read])
      if params[:good_read][:image_delete] == true
        @post.image_delete 
      end
      
      redirect_to :manage_bbd_blog, :notice => "Update Successful"
    else
      render :edit_good_read, :notice => "Update was unsuccessful"
    end
  end
  
  def destroy
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    @post.destroy
    redirect_to :manage_bbd_blog, :notice => "Post Deleted"
  end

  private
    def gather_thine_dates
      @dates = GoodRead.all( :select => "created_at", :order => "created_at" )
    end
    
    def gather_thine_categories
      @categories = Category.find(:all, :order => "name")
    end
end
