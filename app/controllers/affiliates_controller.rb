class AffiliatesController < ApplicationController
  # GET /affiliates
  # GET /affiliates.xml
  before_filter :bomb_dot_com
  
  require 'csv'
  
  def index
    @affiliates = Affiliate.all


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @affiliates }
    end
  end
  
   def csv_import

     csv_file = params[:csv_import][:csv]
            CSV.new(csv_file.tempfile).each do |row|
               a=Affiliate.create!(:entity_name => row[0], :email => row[1], :address => row[2], :city => row[3], :state => row[4], :zip => row[5], :sales_price => row[6], :merchant => row[7], :number_sold => row[8], :total_revenue => row[9])
               #a.entity_name=row[0]
               # a.email=row[1]
                #Affiliate.create(:entity_name => row[0], :email => row[1],)
            end
              
       redirect_to  affiliates_path
     
     
     # @parsed_file = CSV::Reader.parse(params[:dump][:file])
     #      n=0
     #      @parsed_file.each do |row|
     # 
     #      c=Affiliate.new
     #      c.entity_name=row[1]
     #      c.email=row[2]
     #      c.address=row[3]
     #      c.city=row[4]
     #      c.state=row[5]
     #      c.zip=[6]
     #      c.sales_price=row[7]
     #      c.merchant=row[8]
     #      c.number_sold=row[9]
     #      c.total_revenue=row[10]
     #      if c.save
     #          n=n+1
     #          GC.start if n%50==0
     #       end
     #       flash.now[:message]="CSV Import Successful,  #{n} new records added to data base"
     #     end
  end

  # GET /affiliates/1
  # GET /affiliates/1.xml
  def show
    @affiliates = Affiliate.all
    @affiliate = Affiliate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @affiliate }
    end
  end

  # GET /affiliates/new
  # GET /affiliates/new.xml
  def new
    @affiliate = Affiliate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @affiliate }
    end
  end

  # GET /affiliates/1/edit
  def edit
    @affiliate = Affiliate.find(params[:id])
  end

  # POST /affiliates
  # POST /affiliates.xml
  def create
    @affiliate = Affiliate.new(params[:affiliate])

    respond_to do |format|
      if @affiliate.save
        format.html { redirect_to(@affiliate, :notice => 'Affiliate was successfully created.') }
        format.xml  { render :xml => @affiliate, :status => :created, :location => @affiliate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @affiliate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /affiliates/1
  # PUT /affiliates/1.xml
  def update
    @affiliate = Affiliate.find(params[:id])

    respond_to do |format|
      if @affiliate.update_attributes(params[:affiliate])
        format.html { redirect_to(@affiliate, :notice => 'Affiliate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @affiliate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /affiliates/1
  # DELETE /affiliates/1.xml
  def destroy
    @affiliate = Affiliate.find(params[:id])
    @affiliate.destroy

    respond_to do |format|
      format.html { redirect_to(affiliates_url) }
      format.xml  { head :ok }
    end
  end
end
