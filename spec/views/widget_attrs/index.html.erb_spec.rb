require 'rails_helper'

RSpec.describe "widget_attrs/index", :type => :view do
  before(:each) do
    assign(:widget_attrs, [
      WidgetAttr.create!(
        :windget => nil,
        :name => "Name",
        :value => "Value",
        :type => 1
      ),
      WidgetAttr.create!(
        :windget => nil,
        :name => "Name",
        :value => "Value",
        :type => 1
      )
    ])
  end

  it "renders a list of widget_attrs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
