require "spec_helper"

describe CgusController do
  describe "routing" do

    it "routes to #index" do
      get("/cgus").should route_to("cgus#index")
    end

    it "routes to #new" do
      get("/cgus/new").should route_to("cgus#new")
    end

    it "routes to #show" do
      get("/cgus/1").should route_to("cgus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cgus/1/edit").should route_to("cgus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cgus").should route_to("cgus#create")
    end

    it "routes to #update" do
      put("/cgus/1").should route_to("cgus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cgus/1").should route_to("cgus#destroy", :id => "1")
    end

  end
end
