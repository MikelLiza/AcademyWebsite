class Teacher < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true 
end
