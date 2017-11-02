class InvitationsController < ApplicationController
  before_action :set_course
  before_action :set_user, except: [:index]

  def index
    authorize CourseUser
    @users = User.where(admin: false)
  end

  def create
    authorize CourseUser
    @course.users << @user
    redirect_to course_invitations_path(@course)
  end

  def destroy
    authorize CourseUser
    @course.course_users.find_by(user: @user).destroy
    redirect_to course_invitations_path(@course)
  end

private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end