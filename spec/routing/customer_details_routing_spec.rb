require "spec_helper"

describe CustomerDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/customer_details").should route_to("customer_details#index")
    end

    it "routes to #new" do
      get("/customer_details/new").should route_to("customer_details#new")
    end

    it "routes to #show" do
      get("/customer_details/1").should route_to("customer_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/customer_details/1/edit").should route_to("customer_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/customer_details").should route_to("customer_details#create")
    end

    it "routes to #update" do
      put("/customer_details/1").should route_to("customer_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/customer_details/1").should route_to("customer_details#destroy", :id => "1")
    end

  end
end
