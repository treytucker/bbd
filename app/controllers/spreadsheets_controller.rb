class SpreadsheetsController < ApplicationController
  
  def index
    @title = "Spreadsheet Manager"
    
    # Push this over to the model
    hash = {}
    Spreadsheet.gather_thine_spreadsheets.each do |f|
      @last = ActiveRecord.const_get(f).last
      hash.merge!(f.to_sym => @last)
    end
    @hash = hash

    @current_jobs = Spreadsheet.all
  end
  
  def show
    if @model = ActiveRecord.const_get(params[:id])
      @title = "Spreadsheet | #{params[:id]}"
      @column_names = @model.list_columns
      @spreadsheet = @model.hashify
      
    else
      redirect_to :index, :notice => "This page does not exist"
    end
    rescue
      redirect_to spreadsheets_path, :notice => "This page does not exist"
  end

  def new
    @spreadsheet  = Spreadsheet.new
  end

  def create
    @spreadsheet = Spreadsheet.new(params[:spreadsheet])
    if @spreadsheet.valid?
      @spreadsheet.save
      Delayed::Job.enqueue(CsvImportingJob.new(@spreadsheet.id))
      redirect_to spreadsheets_path
    else
      render "new"
    end
  end
end
