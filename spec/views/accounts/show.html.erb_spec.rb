require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :name => "Name",
      :profile => "Profile",
      :icon_path => "Icon Path",
      :area => "Area",
      :twitter_id => "Twitter",
      :oauth_token => "Oauth Token",
      :oauth_secret => "Oauth Secret",
      :client_token => "Client Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Profile/)
    rendered.should match(/Icon Path/)
    rendered.should match(/Area/)
    rendered.should match(/Twitter/)
    rendered.should match(/Oauth Token/)
    rendered.should match(/Oauth Secret/)
    rendered.should match(/Client Token/)
  end
end
