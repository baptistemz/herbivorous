require 'faker'
FactoryGirl.define do
  factory :vegetable_process do
    climate_array = ['0-10°C', '10-20°C', '>20°C']
    environment_array = [:indoor, :outdoor]
    kind_array = [:fruit, :vegetable, :seed]
    maturation_length (1..100).to_a.sample
    climate climate_array.sample
    name {Faker::Lorem.word}
    kind kind_array.sample
    environment environment_array.sample
    difficulty (1..5).to_a.sample
    # user
  end
end
