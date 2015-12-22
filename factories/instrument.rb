FactoryGirl.define do
  factory :instrument do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
    amount 5
    reserved 2
    price 499.99
  end
end
