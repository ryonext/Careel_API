# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :registered_account, :class => 'Account' do
    id 100
    name 'registered_name'
    profile 'registered_profile'
    icon_path 'http://www.example.com'
    area 'registered_area'
    twitter_id '100'
    oauth_token 'registered_token'
    oauth_secret 'registered_secret'
    client_token 'hogehoge'
  end

  factory :my_account, :class => "Account" do
    id 1000
    name "me"
    profile "It's me!"
    icon_path "http://www.example.com/me"
    area "my_area"
    twitter_id "10000"
    oauth_token "my_token"
    oauth_secret "my_secret"
    client_token "my_token"
  end

  factory :friend, :class => "Account" do
    id 2000
    name "him"
    profile "It's him!"
    icon_path "http://www.example.com/him"
    area "his_area"
    twitter_id "10001"
    oauth_token "his_token"
    oauth_secret "his_secret"
    client_token "his_token"
  end
end

