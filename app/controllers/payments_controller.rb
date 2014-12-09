class PaymentsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @items = PupilHasLesson.find_by_sql("SELECT p.id AS pupil_id, pay.kind, pay.id, p.first_name, p.last_name,
      pay.name, pay.adjusted_price
     FROM pupils AS p INNER JOIN
       (SELECT phy.pupil_id, y.id, 'R' AS kind, 'Registration for ' || y.year AS name, adjusted_price FROM years AS y INNER JOIN pupil_has_years AS phy ON y.id = phy.year_id WHERE payment_id IS NULL
        UNION ALL
        SELECT pupil_id, l.id, 'L' AS kind, l.genre || ' - ' || l.grade AS name, adjusted_price FROM lessons AS l INNER JOIN pupil_has_lessons AS phl ON l.id = phl.lesson_id WHERE payment_id IS NULL
        ) AS pay
      ON p.id = pay.pupil_id
     WHERE p.user_id = 1
     ORDER BY p.last_name, p.first_name;")

    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)
    @payment.user = current_user

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:user_id)
    end
end
