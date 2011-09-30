require 'spec_helper'

describe "affiliates/edit.html.erb" do
  before(:each) do
    @affiliate = assign(:affiliate, stub_model(Affiliate))
  end

  it "renders the edit affiliate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => affiliates_path(@affiliate), :method => "post" do
    end
  end
end
