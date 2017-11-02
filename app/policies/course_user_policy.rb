class CourseUserPolicy < ApplicationPolicy
  def index?
    create? && destroy?
  end

  def create?
    admin?
  end

  def destroy?
    admin?
  end
end
