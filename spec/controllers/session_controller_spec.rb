require 'spec_helper'

describe SessionController do

  describe "POST 'create'" do
    context "Normal case" do
      it "returns http success" do
        post 'create', :twitter_id => 1, :format => 'json'
        response.should be_success
      end
    end

    context "Twitter id is nil" do
      it "returns http success" do
        post 'create', :format => 'json'
        response.code.should == '400'
      end
    end
  end

#  describe "GET 'destroy'" do
#    it "returns http success" do
#      get 'destroy'
#      response.should be_success
#    end
#  end

end
