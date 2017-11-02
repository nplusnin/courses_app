class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        user.courses
      end
    end
  end

  def show?
    admin? || invited?
  end

private

  def invited?
    record.users.include?(user)
  end
end
