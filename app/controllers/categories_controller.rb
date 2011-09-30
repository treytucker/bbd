class CategoriesController < ApplicationController
  before_filter :bomb_dot_com
  
  def index
    @categories = Category.all
    @title = "Catagories"
  end

  def edit
    @category = Category.find(params[:id])
    @title = "Edit category"
  end

  def new
    @category = Category.new
    @title = "new category"
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to( categories_path, :notice => "category Updated" )
    else
      render :edit, :notice => "Error"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    # Checks if there are any good_reads associated with the category.
    # FIXME Flash message needs to list all the blog entries in that category
    if @category.good_reads.count == 0
      if @category.destroy
        redirect_to categories_path, :notice => "category '#{@category.name}' Deleted."
      else
        render categories_path, :notice => "Well that was weird, #{@category.name} was not deleted..."
      end
    else
      a = []
      @good_reads = @category.good_reads.each do |f|
        a.concat(["#{f.title}"])
      end
      flash[:notice] = "The category was not deleted...Please remove all the Good Reads associated with this category."
      redirect_to categories_path
    end

  end

  def create
    @category = Category.new(params[:category])
    if @category.valid?
      @category.save
      redirect_to categories_path, :notice => "category created"
    else
      render :edit
    end
  end
end
