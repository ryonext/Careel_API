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
    
    context "Registered Account" do
      it "should return correct json" do
        FactoryGirl.create(:registered_account)
        post "/login.json", {:twitter_id => 100}
        expected_json = {"id" => 100, "name" => 'registered_name', "profile" => 'registered_profile', "icon_path" => 'http://www.example.com', "area" => "registered_area", "twitter_id" => '100', "oauth_token" => "registered_token", "oauth_secret" => "registered_secret", "client_token" => "hogehoge",}
        JSON.parse(response.body).should == expected_json
      end
    end

    context "Twitter id is Invalid" do
      [nil, ''].each do |id|
        it 'should return 400 response' do
          post "/login.json", {:twitter_id => id}
          response.code.should == '400'
        end
      end
    end
  end
end
