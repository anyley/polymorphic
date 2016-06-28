require 'rails_helper'

RSpec.describe "texts/show", :type => :view do
  before(:each) do
    @text = assign(:text, Text.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
