require 'faker'
FactoryGirl.define do
  factory :vegetable_process do
    climate_array = ['0-10°C', '10-20°C', '>20°C']
    environment_array = ['indoor', 'outdoor']
    maturation_length (1..100).to_a.sample
    climate climate_array.sample
    kind {Faker::Lorem.word}
    environment environment_array.sample
    difficulty (1..5).to_a.sample
    # user
  end
end
