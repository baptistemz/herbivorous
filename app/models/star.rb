class Star < ApplicationRecord
  belongs_to :vegetable_process
  belongs_to :user, foreign_key: :stared_by
  validates_uniqueness_of :vegetable_process_id, scope: :stared_by
end
