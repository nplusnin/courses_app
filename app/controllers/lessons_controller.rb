class LessonsController < ApplicationController
  before_action :set_course, only: [:new, :create]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def show
    authorize @lesson
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def edit
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params.merge(course: @course))
    authorize @lesson

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    authorize @lesson

    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    authorize @lesson
    
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to @lesson.course, notice: 'Lesson was successfully destroyed.' }
    end
  end

private
  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :body, :you_tube_link)
  end
end
