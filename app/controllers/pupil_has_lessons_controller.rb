class PupilHasLessonsController < ApplicationController
  before_action :set_pupil_has_lesson, only: [:show, :edit, :update, :destroy]

  # GET /pupil_has_lessons
  # GET /pupil_has_lessons.json
  def index
    @pupil_has_lessons = PupilHasLesson.all
  end

  # GET /pupil_has_lessons/1
  # GET /pupil_has_lessons/1.json
  def show
  end

  # GET /pupil_has_lessons/new
  def new
    @pupil_has_lesson = PupilHasLesson.new
  end

  # GET /pupil_has_lessons/1/edit
  def edit
  end

  # POST /pupil_has_lessons
  # POST /pupil_has_lessons.json
  def create
    @pupil_has_lesson = PupilHasLesson.new(pupil_has_lesson_params)

    respond_to do |format|
      if @pupil_has_lesson.save
        format.html { redirect_to @pupil_has_lesson, notice: 'Pupil has lesson was successfully created.' }
        format.json { render :show, status: :created, location: @pupil_has_lesson }
      else
        format.html { render :new }
        format.json { render json: @pupil_has_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupil_has_lessons/1
  # PATCH/PUT /pupil_has_lessons/1.json
  def update
    respond_to do |format|
      if @pupil_has_lesson.update(pupil_has_lesson_params)
        format.html { redirect_to @pupil_has_lesson, notice: 'Pupil has lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @pupil_has_lesson }
      else
        format.html { render :edit }
        format.json { render json: @pupil_has_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupil_has_lessons/1
  # DELETE /pupil_has_lessons/1.json
  def destroy
    @pupil_has_lesson.destroy
    respond_to do |format|
      format.html { redirect_to pupil_has_lessons_url, notice: 'Pupil has lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil_has_lesson
      @pupil_has_lesson = PupilHasLesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pupil_has_lesson_params
      params.require(:pupil_has_lesson).permit(:pupil_id, :lesson_id, :payment_id, :adjusted_price)
    end
end
