class QrCodesController < ApplicationController
  before_action :set_qr_code, only: %i[ show edit update destroy ]

  def index
    @qr_codes = QrCode.all
  end

  def show
  end

  def new
    @qr_code = QrCode.new
  end

  def edit
  end

  def create
    @qr_code = QrCode.new(qr_code_params)

    respond_to do |format|
      if @qr_code.save
        @qr_code.generate_qr_code!
        @qr_code.generate_combined_qr_code!
        format.html { redirect_to qr_code_url(@qr_code), notice: "Qr code was successfully created." }
        format.json { render :show, status: :created, location: @qr_code }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qr_code.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @qr_code.update(qr_code_params)
        @qr_code.generate_qr_code!
        @qr_code.generate_combined_qr_code!
        format.html { redirect_to qr_code_url(@qr_code), notice: "Qr code was successfully updated." }
        format.json { render :show, status: :ok, location: @qr_code }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qr_code.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @qr_code.destroy!

    respond_to do |format|
      format.html { redirect_to qr_codes_url, notice: "Qr code was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_qr_code
      @qr_code = QrCode.find(params[:id])
    end

    def qr_code_params
      params.require(:qr_code).permit(:url,
      :logo, :original_image, :combined_image)
    end
end
