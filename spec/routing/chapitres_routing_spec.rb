require "spec_helper"

describe ChapitresController do
  describe "routing" do

    it "routes to #index" do
      get("/chapitres").should route_to("chapitres#index")
    end

    it "routes to #new" do
      get("/chapitres/new").should route_to("chapitres#new")
    end

    it "routes to #show" do
      get("/chapitres/1").should route_to("chapitres#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chapitres/1/edit").should route_to("chapitres#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chapitres").should route_to("chapitres#create")
    end

    it "routes to #update" do
      put("/chapitres/1").should route_to("chapitres#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chapitres/1").should route_to("chapitres#destroy", :id => "1")
    end

  end
end
