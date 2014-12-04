class PupilHasYearsController < ApplicationController
  before_action :set_pupil_has_year, only: [:show, :edit, :update, :destroy]

  # GET /pupil_has_years
  # GET /pupil_has_years.json
  def index
    @pupil_has_years = PupilHasYear.all
  end

  # GET /pupil_has_years/1
  # GET /pupil_has_years/1.json
  def show
  end

  # GET /pupil_has_years/new
  def new
    @pupil_has_year = PupilHasYear.new
  end

  # GET /pupil_has_years/1/edit
  def edit
  end

  # POST /pupil_has_years
  # POST /pupil_has_years.json
  def create
    @pupil_has_year = PupilHasYear.new(pupil_has_year_params)

    respond_to do |format|
      if @pupil_has_year.save
        format.html { redirect_to @pupil_has_year, notice: 'Pupil has year was successfully created.' }
        format.json { render :show, status: :created, location: @pupil_has_year }
      else
        format.html { render :new }
        format.json { render json: @pupil_has_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupil_has_years/1
  # PATCH/PUT /pupil_has_years/1.json
  def update
    respond_to do |format|
      if @pupil_has_year.update(pupil_has_year_params)
        format.html { redirect_to @pupil_has_year, notice: 'Pupil has year was successfully updated.' }
        format.json { render :show, status: :ok, location: @pupil_has_year }
      else
        format.html { render :edit }
        format.json { render json: @pupil_has_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupil_has_years/1
  # DELETE /pupil_has_years/1.json
  def destroy
    @pupil_has_year.destroy
    respond_to do |format|
      format.html { redirect_to pupil_has_years_url, notice: 'Pupil has year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil_has_year
      @pupil_has_year = PupilHasYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pupil_has_year_params
      params.require(:pupil_has_year).permit(:year_id, :payment_id, :pupil_id, :adjusted_price)
    end
end
