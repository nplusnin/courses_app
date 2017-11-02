class Course < ApplicationRecord
  has_many :lessons, dependent: :destroy

  has_many :course_users, dependent: :destroy
  has_many :users, through: :course_users
  
  validates :title, :body, presence: true
  validates :title, uniqueness: true
end
