class LicensePlatesController < ApplicationController
  def index
    @license_plates = LicensePlate.all
  end

  def show
    @license_plate = LicensePlate.find(params[:id])
  end
end
