# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "MyString"
    classifycation ""
    price 1
    amazon_link "MyString"
  end

  factory :sample_item, :class => "Item" do
    name "sample_name"
    classification "sample_classification"
    price 1000
    amazon_link "http://www.example.com/amazon/sample"
  end
end
