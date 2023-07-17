FactoryBot.define do
  factory :user do
    name { Faker::Name.unique.name }
    age { rand(100) }
    email { Faker::Internet.email }
  end
end
