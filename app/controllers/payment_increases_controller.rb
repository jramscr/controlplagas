class PaymentIncreasesController < ApplicationController
  before_action :set_payment_increase, only: [:show, :edit, :update, :destroy]

  # GET /payment_increases
  # GET /payment_increases.json
  def index
    @payment_increases = PaymentIncrease.all
  end

  # GET /payment_increases/1
  # GET /payment_increases/1.json
  def show
  end

  # GET /payment_increases/new
  def new
    @payment_increase = PaymentIncrease.new
  end

  # GET /payment_increases/1/edit
  def edit
  end

  # POST /payment_increases
  # POST /payment_increases.json
  def create
    @payment_increase = PaymentIncrease.new(payment_increase_params)

    respond_to do |format|
      if @payment_increase.save
        format.html { redirect_to @payment_increase, notice: 'Payment increase was successfully created.' }
        format.json { render :show, status: :created, location: @payment_increase }
      else
        format.html { render :new }
        format.json { render json: @payment_increase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_increases/1
  # PATCH/PUT /payment_increases/1.json
  def update
    respond_to do |format|
      if @payment_increase.update(payment_increase_params)
        format.html { redirect_to @payment_increase, notice: 'Payment increase was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_increase }
      else
        format.html { render :edit }
        format.json { render json: @payment_increase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_increases/1
  # DELETE /payment_increases/1.json
  def destroy
    @payment_increase.destroy
    respond_to do |format|
      format.html { redirect_to payment_increases_url, notice: 'Payment increase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_increase
      @payment_increase = PaymentIncrease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_increase_params
      params.require(:payment_increase).permit(:percentage, :frequency)
    end
end
