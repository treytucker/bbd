require 'spec_helper'

describe "customer_details/show.html.erb" do
  before(:each) do
    @customer_detail = assign(:customer_detail, stub_model(CustomerDetail))
  end

  it "renders attributes in <p>" do
    render
  end
end
