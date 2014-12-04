class PupilsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_pupil, only: [:show, :edit, :update, :destroy]

  # GET /pupils
  # GET /pupils.json
  def index
    @pupils = Pupil.all
  end

  # GET /pupils/1
  # GET /pupils/1.json
  def show
  end

  # GET /pupils/new
  def new
    @pupil = Pupil.new
  end

  # GET /pupils/1/edit
  def edit
  end

  # POST /pupils
  # POST /pupils.json
  def create
    @pupil = Pupil.new(pupil_params)
    @pupil.user = current_user

    respond_to do |format|
      if @pupil.save
        format.html { redirect_to @pupil, notice: 'Pupil was successfully created.' }
        format.json { render :show, status: :created, location: @pupil }
      else
        format.html { render :new }
        format.json { render json: @pupil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupils/1
  # PATCH/PUT /pupils/1.json
  def update
    respond_to do |format|
      if @pupil.update(pupil_params)
        format.html { redirect_to @pupil, notice: 'Pupil was successfully updated.' }
        format.json { render :show, status: :ok, location: @pupil }
      else
        format.html { render :edit }
        format.json { render json: @pupil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupils/1
  # DELETE /pupils/1.json
  def destroy
    @pupil.destroy
    respond_to do |format|
      format.html { redirect_to pupils_url, notice: 'Pupil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil
      @pupil = Pupil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pupil_params
      params.require(:pupil).permit(:user_id, :school, :class_form, :telephone_number, :email, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_telephone, :previous_dancing_schools, :most_recent_examination_taken, :exam_result, :medical_conditions, :first_name, :last_name, :birthday)
    end
end
