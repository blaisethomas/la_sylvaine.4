class PupilHasYearsController < ApplicationController
  before_action :set_pupil_has_year, only: [:show, :edit, :update, :destroy]

  # GET /pupil_has_years
  # GET /pupil_has_years.json
  def index
    @years = Year.all.to_a
    @payments = PupilHasYear.find_by_sql("SELECT pupil_id, year_id, amount, adjusted_price
     FROM pupil_has_years AS phy
      INNER JOIN pupils AS pu
      ON pu.id = phy.pupil_id
      LEFT OUTER JOIN payments AS p
       ON phy.payment_id = p.id
     WHERE pu.user_id=#{current_user.id};").to_a

    # Convenience method to rapidly scan through and find a particular pupil_year
    @payments.define_singleton_method(:find_by_pupil_year) do |*args|
      puts args.inspect
      self.each do |p|
        if p.pupil_id == args[0] && p.year_id == args[1]
          puts "YAY! #{p.inspect}"
          return p
        end
      end
      return nil
    end

   @pupil_has_years = PupilHasYear.all #.sort_by(:year, :pupil_id)
  end

  # GET /pupil_has_years/1
  # GET /pupil_has_years/1.json
  def show
  end

  # GET /pupil_has_years/new
  def new
    year = Year.last
    @pupil_has_year = year.pupil_has_years.new(adjusted_price: year.price)
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
        format.html { redirect_to pupil_has_years_path, notice: 'Pupil has year was successfully created.' }
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
        format.html { redirect_to pupil_has_years_path, notice: 'Pupil has year was successfully updated.' }
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
