require "spec_helper"

describe WidgetTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/widget_types").should route_to("widget_types#index")
    end

    it "routes to #new" do
      get("/widget_types/new").should route_to("widget_types#new")
    end

    it "routes to #show" do
      get("/widget_types/1").should route_to("widget_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/widget_types/1/edit").should route_to("widget_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/widget_types").should route_to("widget_types#create")
    end

    it "routes to #update" do
      put("/widget_types/1").should route_to("widget_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/widget_types/1").should route_to("widget_types#destroy", :id => "1")
    end

  end
end
