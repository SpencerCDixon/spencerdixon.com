# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@email.com" }
    password "12345678910"
    admin false
  end

  factory :admin, class: User do
    email "Admin@email.com"
    password "12345678"
    admin true
  end
end
