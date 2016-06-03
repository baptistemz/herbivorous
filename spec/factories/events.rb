FactoryGirl.define do
  factory :event do
    process = VegetableProcess.new(maturation_length: (1..100).to_a.sample)
    vegetable_process process
    action 'blablablabla'
    time_needed (0..120).to_a.sample
    days_from_start (0..process.maturation_length).to_a.sample
  end
end
