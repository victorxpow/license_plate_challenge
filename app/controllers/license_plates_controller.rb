class LicensePlatesController < ApplicationController
  def index
    @license_plates = LicensePlate.all
  end
end
