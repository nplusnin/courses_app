class User < ApplicationRecord
  has_many :course_users, dependent: :destroy
  has_many :courses, through: :course_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
