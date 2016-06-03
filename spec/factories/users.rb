require 'faker'
FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password {Faker::Internet.password(6)}
    username 'gerard'
  end
end
