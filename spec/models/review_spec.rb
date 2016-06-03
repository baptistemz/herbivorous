require 'rails_helper'

RSpec.describe Review, type: :model do
  it "has a valid factory" do
    FactoryGirl.build(:review).should be_valid
  end
end
