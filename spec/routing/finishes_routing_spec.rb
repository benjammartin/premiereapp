require "spec_helper"

describe FinishesController do
  describe "routing" do

    it "routes to #index" do
      get("/finishes").should route_to("finishes#index")
    end

    it "routes to #new" do
      get("/finishes/new").should route_to("finishes#new")
    end

    it "routes to #show" do
      get("/finishes/1").should route_to("finishes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/finishes/1/edit").should route_to("finishes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/finishes").should route_to("finishes#create")
    end

    it "routes to #update" do
      put("/finishes/1").should route_to("finishes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/finishes/1").should route_to("finishes#destroy", :id => "1")
    end

  end
end
