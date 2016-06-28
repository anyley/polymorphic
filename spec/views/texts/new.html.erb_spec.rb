require 'rails_helper'

RSpec.describe "texts/new", :type => :view do
  before(:each) do
    assign(:text, Text.new())
  end

  it "renders new text form" do
    render

    assert_select "form[action=?][method=?]", texts_path, "post" do
    end
  end
end
