require 'spec_helper'

describe "accounts/index" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :name => "Name",
        :profile => "Profile",
        :icon_path => "Icon Path",
        :area => "Area",
        :twitter_id => "Twitter",
        :oauth_token => "Oauth Token",
        :oauth_secret => "Oauth Secret",
        :client_token => "Client Token"
      ),
      stub_model(Account,
        :name => "Name",
        :profile => "Profile",
        :icon_path => "Icon Path",
        :area => "Area",
        :twitter_id => "Twitter",
        :oauth_token => "Oauth Token",
        :oauth_secret => "Oauth Secret",
        :client_token => "Client Token"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Profile".to_s, :count => 2
    assert_select "tr>td", :text => "Icon Path".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Oauth Token".to_s, :count => 2
    assert_select "tr>td", :text => "Oauth Secret".to_s, :count => 2
    assert_select "tr>td", :text => "Client Token".to_s, :count => 2
  end
end
