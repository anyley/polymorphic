require 'rails_helper'

RSpec.describe "texts/index", :type => :view do
  before(:each) do
    assign(:texts, [
      Text.create!(),
      Text.create!()
    ])
  end

  it "renders a list of texts" do
    render
  end
end
