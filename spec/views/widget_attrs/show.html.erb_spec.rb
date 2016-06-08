require 'rails_helper'

RSpec.describe "widget_attrs/show", :type => :view do
  before(:each) do
    @widget_attr = assign(:widget_attr, WidgetAttr.create!(
      :windget => nil,
      :name => "Name",
      :value => "Value",
      :type => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Value/)
    expect(rendered).to match(/1/)
  end
end
