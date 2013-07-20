require 'spec_helper'

describe "Session" do
  describe "POST /login" do
    context "Account is not registered" do
      # これはrequestで検証すべき内容ではないかもね
      it "creates Account" do
        proc{post "/login.json", {:twitter_id => 1}}.should change(Account, :count).by(1)
      end
      it "should return correct json" do
        post "/login.json", {:twitter_id => 1}
        # symbolでもnameでもマッチする方法
        expected_json = {"id" => 1, "name" => 'twitter_name', "profile" => 'twitter_profile', "icon_path" => 'http://www.example.com', "area" => "twitter_area", "twitter_id" => '1', "oauth_token" => "twitter_oauth_token", "oauth_secret" => "twitter_oauth_secret", "client_token" => "hogehoge",}
        JSON.parse(response.body).should == expected_json
      end
    end
  end
end
