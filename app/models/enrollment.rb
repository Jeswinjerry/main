class Enrollment < ApplicationRecord
  belongs_to :course
  belongs_to :student

  has_many :enrollment_histories

  validates :status, presence: true
end