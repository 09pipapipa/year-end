FactoryBot.define do
  factory :user do
    store_name             { Faker::Name.initials(number: 2) }
    store_no               { Faker::Number.number(digits: 3) }
    email                  { Faker::Internet.email }
    password               { Faker::Internet.password(min_length: 6) }
    password_confirmation  { |u| u.password }
  end
end