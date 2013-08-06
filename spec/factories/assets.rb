# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :asset, :class => 'Assets' do
    account_id 1
    item_id 1
    status 1
  end
end
