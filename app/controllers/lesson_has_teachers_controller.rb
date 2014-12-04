class LessonHasTeachersController < ApplicationController
  before_action :set_lesson_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /lesson_has_teachers
  # GET /lesson_has_teachers.json
  def index
    @lesson_has_teachers = LessonHasTeacher.all
  end

  # GET /lesson_has_teachers/1
  # GET /lesson_has_teachers/1.json
  def show
  end

  # GET /lesson_has_teachers/new
  def new
    @lesson_has_teacher = LessonHasTeacher.new
  end

  # GET /lesson_has_teachers/1/edit
  def edit
  end

  # POST /lesson_has_teachers
  # POST /lesson_has_teachers.json
  def create
    @lesson_has_teacher = LessonHasTeacher.new(lesson_has_teacher_params)

    respond_to do |format|
      if @lesson_has_teacher.save
        format.html { redirect_to @lesson_has_teacher, notice: 'Lesson has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @lesson_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_has_teachers/1
  # PATCH/PUT /lesson_has_teachers/1.json
  def update
    respond_to do |format|
      if @lesson_has_teacher.update(lesson_has_teacher_params)
        format.html { redirect_to @lesson_has_teacher, notice: 'Lesson has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @lesson_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_has_teachers/1
  # DELETE /lesson_has_teachers/1.json
  def destroy
    @lesson_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to lesson_has_teachers_url, notice: 'Lesson has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_has_teacher
      @lesson_has_teacher = LessonHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_has_teacher_params
      params.require(:lesson_has_teacher).permit(:lesson_id, :teacher_id)
    end
end
