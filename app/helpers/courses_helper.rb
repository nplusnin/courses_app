module CoursesHelper
  def navbar_course_active?
    "active" if ["courses", "lessons", "invitations"].include?(controller_name)
  end
end
