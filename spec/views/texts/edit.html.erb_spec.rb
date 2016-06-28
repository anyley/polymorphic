require 'rails_helper'

RSpec.describe "texts/edit", :type => :view do
  before(:each) do
    @text = assign(:text, Text.create!())
  end

  it "renders the edit text form" do
    render

    assert_select "form[action=?][method=?]", text_path(@text), "post" do
    end
  end
end
