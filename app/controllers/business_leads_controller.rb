class BusinessLeadsController < ApplicationController
  before_filter :bomb_dot_com, :except => :index
  
  def index
    if params[:business_inquiries]
      @lead = BusinessLead.new(params[:business_inquiries])
      if @lead.valid?
        @lead.save
        BusinessLeadMailer.business_contact(@lead).deliver 
        redirect_to for_businesses_path, :notice => "Thank You! We will contact you soon."
      else
        redirect_to for_businesses_path, :notice => "Sorry. There were errors in your submission. Please make sure all required fields are filled."
        # @bc = BASIC_CONTROLLERS[:for_businesses]
        #         @content = ActiveRecord.const_get(@bc[:model]).last
        #         @layout = @bc[:layout]
        #         @title = @bc[:title]
        #         render "basics/for_businesses"
      end
    else
      redirect_to for_businesses_path, :notice => "nothing submitted"
    end
  end
  
  def show_all
    @leads = BusinessLead.all
  end
  
  def show
    @lead = BusinessLead.find(params[:id])
  end
  
  def destroy
    @lead = BusinessLead.find(params[:id])
    if @lead.destroy
      redirect_to admin_business_leads_path
    else
      render "show_all", :notice => "There was a problem"
    end
  end
end