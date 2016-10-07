class Event < ApplicationRecord
  belongs_to :vegetable_process
  validates_presence_of :days_from_start, :action, :time_needed
  validates_numericality_of :days_from_start, :time_needed
  validate :in_process_duration


  private
  def in_process_duration
    errors.add(:days_from_start,"erreur à la con") unless
      (0..vegetable_process.maturation_length).to_a.include?(days_from_start)
  end
end
