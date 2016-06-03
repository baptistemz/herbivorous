FactoryGirl.define do
  factory :seed do
    process = VegetableProcess.new(maturation_length: (1..100).to_a.sample)
    vegetable_process process
    kind 'carrot'
    planting_date Date.today
    term_date Date.today + process.maturation_length.days
    user
  end
end
