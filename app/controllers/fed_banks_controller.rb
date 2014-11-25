class FedBanksController < ApplicationController
  before_action :set_fed_bank, only: [:show, :edit, :update, :destroy]
  before_action :set_fed_bank_by_rt, only: [:bank]
  require 'json'

  # GET /fed_banks
  # GET /fed_banks.json
  def index
    @fed_banks = FedBank.all
  end

  def search
  end

  def search_result
    @fed_bank = FedBank.find_by_rt_number(params[:rt_number])
    # raise @fed_bank.inspect
    if @fed_bank
      render :show
    elsif params[:rt_number].present?
      redirect_to root_path, notice: "No bank with routing #{params[:rt_number]} was found."
    else
      redirect_to root_path, notice: "Please enter a valid routing number."
    end
  end

  

  # GET /fed_banks/1
  # GET /fed_banks/1.json
  def show
  end

  def bank
    render json: @fed_bank
  end

  # GET /fed_banks/new
  def new
    @fed_bank = FedBank.new
  end

  # GET /fed_banks/1/edit
  def edit
  end

  # POST /fed_banks
  # POST /fed_banks.json
  def create
    @fed_bank = FedBank.new(fed_bank_params)

    respond_to do |format|
      if @fed_bank.save
        format.html { redirect_to @fed_bank, notice: 'Fed bank was successfully created.' }
        format.json { render :show, status: :created, location: @fed_bank }
      else
        format.html { render :new }
        format.json { render json: @fed_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fed_banks/1
  # PATCH/PUT /fed_banks/1.json
  def update
    respond_to do |format|
      if @fed_bank.update(fed_bank_params)
        format.html { redirect_to @fed_bank, notice: 'Fed bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @fed_bank }
      else
        format.html { render :edit }
        format.json { render json: @fed_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fed_banks/1
  # DELETE /fed_banks/1.json
  def destroy
    @fed_bank.destroy
    respond_to do |format|
      format.html { redirect_to fed_banks_url, notice: 'Fed bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fed_bank
      if params[:rt_number].present?
        @fed_bank = FedBank.find_by_rt_number(params[:rt_number])
      else
        @fed_bank = FedBank.find(params[:id])
      end
    end

    def set_fed_bank_by_rt
      @fed_bank = FedBank.find_by_rt_number(params[:rt_number])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fed_bank_params
      params.require(:fed_bank).permit(:rt_number, :office_code, :frb_number, :record_type, :change_date, :new_routing, :name, :address, :city, :state, :zipcode, :zipcode_ext, :tel_Area, :tel_prefix_num, :tel_suffix_num)
    end
end
