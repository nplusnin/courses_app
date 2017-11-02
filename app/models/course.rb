class Course < ApplicationRecord
  has_many :lessons, dependent: :destroy
  
  validates :title, :body, presence: true
  validates :title, uniqueness: true
end
