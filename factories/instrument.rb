FactoryGirl.define do
  factory :instrument do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    amount 5
    reserved 2
    price { Faker::Commerce.price }
  end
end
