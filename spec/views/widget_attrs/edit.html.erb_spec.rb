require 'rails_helper'

RSpec.describe "widget_attrs/edit", :type => :view do
  before(:each) do
    @widget_attr = assign(:widget_attr, WidgetAttr.create!(
      :windget => nil,
      :name => "MyString",
      :value => "MyString",
      :type => 1
    ))
  end

  it "renders the edit widget_attr form" do
    render

    assert_select "form[action=?][method=?]", widget_attr_path(@widget_attr), "post" do

      assert_select "input#widget_attr_windget_id[name=?]", "widget_attr[windget_id]"

      assert_select "input#widget_attr_name[name=?]", "widget_attr[name]"

      assert_select "input#widget_attr_value[name=?]", "widget_attr[value]"

      assert_select "input#widget_attr_type[name=?]", "widget_attr[type]"
    end
  end
end
