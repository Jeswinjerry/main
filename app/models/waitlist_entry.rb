class WaitlistEntry < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates :status, presence: true
end