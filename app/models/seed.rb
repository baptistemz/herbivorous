class Seed < ActiveRecord::Base
  belongs_to :vegetable_process
  belongs_to :user
end
