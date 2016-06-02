class Event < ActiveRecord::Base
  belongs_to :vegetable_process
  belongs_to :seed
end
