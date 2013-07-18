require 'spec_helper'

describe SessionController do

  describe "GET 'create'" do
    it "returns http success" do
      post 'create'
      response.should be_success
    end
  end

#  describe "GET 'destroy'" do
#    it "returns http success" do
#      get 'destroy'
#      response.should be_success
#    end
#  end

end
