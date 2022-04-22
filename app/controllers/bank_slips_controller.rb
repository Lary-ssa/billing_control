class BankSlipsController < ApplicationController
  before_action :set_bank_slip, only: %i[ show edit update destroy ]

  # GET /bank_slips or /bank_slips.json
  def index
    @bank_slips = BankSlip.all
  end

  # GET /bank_slips/1 or /bank_slips/1.json
  def show
  end

  # GET /bank_slips/new
  def new
    @bank_slip = BankSlip.new
  end

  # GET /bank_slips/1/edit
  def edit
  end

  # POST /bank_slips or /bank_slips.json
  def create
    @bank_slip = BankSlip.new(bank_slip_params)

    respond_to do |format|
      if @bank_slip.save
        format.html { redirect_to bank_slip_url(@bank_slip), notice: "Bank slip was successfully created." }
        format.json { render :show, status: :created, location: @bank_slip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bank_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_slips/1 or /bank_slips/1.json
  def update
    respond_to do |format|
      if @bank_slip.update(bank_slip_params)
        format.html { redirect_to bank_slip_url(@bank_slip), notice: "Bank slip was successfully updated." }
        format.json { render :show, status: :ok, location: @bank_slip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bank_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_slips/1 or /bank_slips/1.json
  def destroy
    @bank_slip.destroy

    respond_to do |format|
      format.html { redirect_to bank_slips_url, notice: "Bank slip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_slip
      @bank_slip = BankSlip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bank_slip_params
      params.require(:bank_slip).permit(:bar_code, :client_id, :payer_id, :due_date, :amount, :description)
    end
end
