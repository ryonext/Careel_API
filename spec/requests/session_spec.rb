require 'spec_helper'

describe "Session" do
  describe "POST /login" do
    context "Account is not registered" do
      it "creates Account" do
        proc{post "/login", {:twitter_id => 1}}.should change(Account, :count).by(1)
      end
    end
  end
end
