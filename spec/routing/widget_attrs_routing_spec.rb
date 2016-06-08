require "rails_helper"

RSpec.describe WidgetAttrsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/widget_attrs").to route_to("widget_attrs#index")
    end

    it "routes to #new" do
      expect(:get => "/widget_attrs/new").to route_to("widget_attrs#new")
    end

    it "routes to #show" do
      expect(:get => "/widget_attrs/1").to route_to("widget_attrs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/widget_attrs/1/edit").to route_to("widget_attrs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/widget_attrs").to route_to("widget_attrs#create")
    end

    it "routes to #update" do
      expect(:put => "/widget_attrs/1").to route_to("widget_attrs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/widget_attrs/1").to route_to("widget_attrs#destroy", :id => "1")
    end

  end
end
