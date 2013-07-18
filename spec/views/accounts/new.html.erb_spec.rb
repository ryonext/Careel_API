require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :name => "MyString",
      :profile => "MyString",
      :icon_path => "MyString",
      :area => "MyString",
      :twitter_id => "MyString",
      :oauth_token => "MyString",
      :oauth_secret => "MyString",
      :client_token => "MyString"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", accounts_path, "post" do
      assert_select "input#account_name[name=?]", "account[name]"
      assert_select "input#account_profile[name=?]", "account[profile]"
      assert_select "input#account_icon_path[name=?]", "account[icon_path]"
      assert_select "input#account_area[name=?]", "account[area]"
      assert_select "input#account_twitter_id[name=?]", "account[twitter_id]"
      assert_select "input#account_oauth_token[name=?]", "account[oauth_token]"
      assert_select "input#account_oauth_secret[name=?]", "account[oauth_secret]"
      assert_select "input#account_client_token[name=?]", "account[client_token]"
    end
  end
end
