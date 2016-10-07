class VegetableProcess < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  require 'elasticsearch/model'
  searchkick
  extend Enumerize
  belongs_to :user, optional: true
  has_many :events, dependent: :destroy
  has_many :seeds, dependent: :nullify
  has_many :stars

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
