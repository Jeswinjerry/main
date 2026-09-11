class Student < ApplicationRecord
  has_many :enrollments
  has_many :waitlist_entries

  validates :name, presence: true
  validates :email, presence: true
end