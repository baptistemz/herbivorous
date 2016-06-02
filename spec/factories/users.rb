require 'faker'
FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password 'a1b2c3d4'
    password_confirmation 'a1b2c3d4'
  end
end
