require 'spec_helper'

describe "customer_details/edit.html.erb" do
  before(:each) do
    @customer_detail = assign(:customer_detail, stub_model(CustomerDetail))
  end

  it "renders the edit customer_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customer_details_path(@customer_detail), :method => "post" do
    end
  end
end
