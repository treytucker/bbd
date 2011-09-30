require 'spec_helper'

describe "affiliates/show.html.erb" do
  before(:each) do
    @affiliate = assign(:affiliate, stub_model(Affiliate))
  end

  it "renders attributes in <p>" do
    render
  end
end
