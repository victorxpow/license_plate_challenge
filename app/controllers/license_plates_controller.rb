class LicensePlatesController < ApplicationController
  def index
    @license_plates = LicensePlate.all
  end

  def show
    @license_plate = LicensePlate.find(params[:id])
  end

  def new
    @license_plate = LicensePlate.new
  end

  def create
    @license_plate = LicensePlate.new(license_plate_params)
    return redirect_to @license_plate,
    notice: 'Placa registrada com sucesso' if @license_plate.save

    render :new
  end

  private

  def license_plate_params
    params.require(:license_plate).permit(:owner, :model, :year)
  end
  
end
