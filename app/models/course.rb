class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :waitlist_entries, dependent: :destroy

  validates :name, presence: true
  validates :capacity, numericality: { greater_than: 0 }

  def full?
    enrollments.where(status: "active").count >= capacity
  end
end