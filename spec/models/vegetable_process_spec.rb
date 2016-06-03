require 'rails_helper'

RSpec.describe VegetableProcess, type: :model do
  it "has a valid factory" do
    FactoryGirl.build(:vegetable_process).should be_valid
  end
end
