require "spec_helper"

describe CgvsController do
  describe "routing" do

    it "routes to #index" do
      get("/cgvs").should route_to("cgvs#index")
    end

    it "routes to #new" do
      get("/cgvs/new").should route_to("cgvs#new")
    end

    it "routes to #show" do
      get("/cgvs/1").should route_to("cgvs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cgvs/1/edit").should route_to("cgvs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cgvs").should route_to("cgvs#create")
    end

    it "routes to #update" do
      put("/cgvs/1").should route_to("cgvs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cgvs/1").should route_to("cgvs#destroy", :id => "1")
    end

  end
end
