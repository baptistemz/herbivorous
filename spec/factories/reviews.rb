FactoryGirl.define do
  factory :review do
    grade (1..5).to_a.sample
    comment 'blablablabla'
    user
    vegetable_process
  end
end
