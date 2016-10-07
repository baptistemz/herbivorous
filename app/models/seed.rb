class Seed < ApplicationRecord
  belongs_to :vegetable_process
  belongs_to :user
  has_many :events, through: :vegetable_process

  validates_presence_of :name, :term_date, :planting_date
  validate :planting_date_is_today

  private
  def planting_date_is_today
    errors.add(:planting_date,"vous devez planter aujourd'hui") unless
      planting_date == Date.today
  end
end
