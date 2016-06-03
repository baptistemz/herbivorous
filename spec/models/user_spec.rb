require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    FactoryGirl.build(:user).should be_valid
  end
  it "is invalid without an email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "is invalid if password is under 6 char" do
    FactoryGirl.build(:user, password: 'a1b2c').should_not be_valid
  end
  it "is invalid without username" do
    FactoryGirl.build(:user, username: nil).should_not be_valid
  end
end
