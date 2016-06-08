require 'rails_helper'

RSpec.describe "WidgetAttrs", :type => :request do
  describe "GET /widget_attrs" do
    it "works! (now write some real specs)" do
      get widget_attrs_path
      expect(response).to have_http_status(200)
    end
  end
end
