class BuyBacksController < ApplicationController
  before_action :set_buy_back, only: [:show, :edit, :update, :destroy]

  # GET /buy_backs
  # GET /buy_backs.json

  helper_method :sort_column, :sort_direction
  def index
    @buy_backs = BuyBack.order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 7)
  end

  # GET /buy_backs/1
  # GET /buy_backs/1.json
  def show
  end

  # GET /buy_backs/new
  def new
    @buy_back = BuyBack.new
  end

  # GET /buy_backs/1/edit
  def edit
  end

  # POST /buy_backs
  # POST /buy_backs.json
  def create
    @buy_back = BuyBack.new(buy_back_params)

    respond_to do |format|
      if @buy_back.save
        format.html { redirect_to @buy_back, notice: 'Buy back was successfully created.' }
        format.json { render :show, status: :created, location: @buy_back }
      else
        format.html { render :new }
        format.json { render json: @buy_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_backs/1
  # PATCH/PUT /buy_backs/1.json
  def update
    respond_to do |format|
      if @buy_back.update(buy_back_params)
        format.html { redirect_to @buy_back, notice: 'Buy back was successfully updated.' }
        format.json { render :show, status: :ok, location: @buy_back }
      else
        format.html { render :edit }
        format.json { render json: @buy_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_backs/1
  # DELETE /buy_backs/1.json
  def destroy
    @buy_back.destroy
    respond_to do |format|
      format.html { redirect_to buy_backs_url, notice: 'Buy back was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_back
      @buy_back = BuyBack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buy_back_params
      params.require(:buy_back).permit(:remove_image,:comments, :status, :purchase_number, :customer_address, :received_date, :paid_date,:first_name, :phone_number, :middle_name, :last_name, :address, :address_two, :city, :state, :zip_code, :email, :image, :company, :drive_license,carriers_attributes:[:carrier], devices_attributes:[:id, :quantity, :device_name, :comments, :carrier, :imei, :price, :_destroy])
    end

    def sort_column
      params[:sort] || "updated_at"
    end
    def sort_direction
      params[:direction] || "asc"
    end

end
