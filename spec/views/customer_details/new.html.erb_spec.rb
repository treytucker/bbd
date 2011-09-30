require 'spec_helper'

describe "customer_details/new.html.erb" do
  before(:each) do
    assign(:customer_detail, stub_model(CustomerDetail).as_new_record)
  end

  it "renders new customer_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customer_details_path, :method => "post" do
    end
  end
end
