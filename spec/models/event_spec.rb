require 'rails_helper'

RSpec.describe Event, type: :model do
  it "has a valid factory" do
    FactoryGirl.build(:event).should be_valid
  end

  it "is in the process time" do
    event = FactoryGirl.build(:event)
    expect(event.days_from_start).to be_between(0, event.vegetable_process.maturation_length).inclusive
  end
end
