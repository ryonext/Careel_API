require "spec_helper"

describe SessionController do
  describe "routing" do

    it "routes to #create" do
      post("/login").should route_to("session#create")
    end

#    it "routes to #destroy" do
#      delete("/logout").should route_to("destroy")
#    end

  end
end
