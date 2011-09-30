require 'spec_helper'

describe "customer_details/index.html.erb" do
  before(:each) do
    assign(:customer_details, [
      stub_model(CustomerDetail),
      stub_model(CustomerDetail)
    ])
  end

  it "renders a list of customer_details" do
    render
  end
end
