require 'spec_helper'

describe "widget_types/new.html.erb" do
  before(:each) do
    assign(:widget_type, stub_model(WidgetType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new widget_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => widget_types_path, :method => "post" do
      assert_select "input#widget_type_name", :name => "widget_type[name]"
    end
  end
end
