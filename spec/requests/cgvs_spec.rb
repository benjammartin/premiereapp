require 'spec_helper'

describe "Cgvs" do
  describe "GET /cgvs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cgvs_path
      response.status.should be(200)
    end
  end
end
