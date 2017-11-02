class Lesson < ApplicationRecord
  belongs_to :course

  validates :title, :body, :you_tube_link, presence: true
  validates :title, uniqueness: { scope: :course }
end
