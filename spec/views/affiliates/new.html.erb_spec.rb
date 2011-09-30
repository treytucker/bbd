require 'spec_helper'

describe "affiliates/new.html.erb" do
  before(:each) do
    assign(:affiliate, stub_model(Affiliate).as_new_record)
  end

  it "renders new affiliate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => affiliates_path, :method => "post" do
    end
  end
end
