class VegetableProcess < ActiveRecord::Base
  extend Enumerize
  belongs_to :user
  has_many :events

  enumerize :climate, in: ['0-10°C', '10-20°C', '>20°C']
  enumerize :environment, in: ['indoor', 'outdoor']
  validates_presence_of :kind, :climate, :environment, :difficulty
end
