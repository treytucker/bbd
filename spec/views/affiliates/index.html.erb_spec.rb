require 'spec_helper'

describe "affiliates/index.html.erb" do
  before(:each) do
    assign(:affiliates, [
      stub_model(Affiliate),
      stub_model(Affiliate)
    ])
  end

  it "renders a list of affiliates" do
    render
  end
end
