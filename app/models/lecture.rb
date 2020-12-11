class Lecture < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :weekly_hours, presence: true
end
