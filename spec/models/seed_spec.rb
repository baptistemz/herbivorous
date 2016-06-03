require 'rails_helper'

RSpec.describe Seed, type: :model do
  it "has a valid factory" do
    FactoryGirl.build(:seed).should be_valid
  end
  it "must be planted today" do
    FactoryGirl.build(:seed, planting_date: Date.today - 1.day).should_not be_valid
    FactoryGirl.build(:seed, planting_date: Date.today + 1.day).should_not be_valid
  end
  it "lasts as long as the process" do
    seed = FactoryGirl.build(:seed)
    expect(seed.term_date - seed.planting_date).to eq(seed.vegetable_process.maturation_length)
  end
end
