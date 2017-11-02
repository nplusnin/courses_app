class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    admin? || invited_to_course?
  end

private

  def invited_to_course?
    record.course.users.include?(user)  
  end
end
