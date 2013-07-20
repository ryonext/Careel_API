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
end

