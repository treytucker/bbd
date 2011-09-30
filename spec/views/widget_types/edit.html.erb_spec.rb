require 'spec_helper'

describe "widget_types/edit.html.erb" do
  before(:each) do
    @widget_type = assign(:widget_type, stub_model(WidgetType,
      :name => "MyString"
    ))
  end

  it "renders the edit widget_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => widget_types_path(@widget_type), :method => "post" do
      assert_select "input#widget_type_name", :name => "widget_type[name]"
    end
  end
end
