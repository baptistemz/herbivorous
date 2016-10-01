class VegetableProcess < ActiveRecord::Base
  require 'elasticsearch/model'
  searchkick
  extend Enumerize
  belongs_to :user
  has_many :events, dependent: :destroy

  enumerize :climate, in: ['0-10°C', '10-20°C', '>20°C']
  enumerize :environment, in: [:indoor, :outdoor]
  enumerize :kind, in: [:fruit, :vegetable, :seed]
  validates_presence_of :kind, :climate, :environment, :difficulty, :name

  def search_data
    {
      kind:             kind,
      name:             name,
      climate:          climate,
      user_id:          user_id,
      maturation_length: maturation_length,
      difficulty: difficulty
    }
  end
end
