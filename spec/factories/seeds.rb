FactoryGirl.define do
  factory :seed do
    kind 'carrot'
    planting_date Date.today
    vegetable_process
    user
  end
end
