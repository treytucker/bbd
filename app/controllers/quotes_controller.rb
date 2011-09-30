class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
      redirect_to quotes_path
    else
      render :new
    end
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update_attributes(params[:quote])
      redirect_to quotes_path, :notice => "You have modified a quote by #{@quote.author}"
    else
      render :edit
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    if @quote.destroy
      redirect_to quotes_path, :notice => "You have deleted a quote by #{@quote.author}"
    end
  end

end
