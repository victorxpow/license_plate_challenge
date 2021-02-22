require 'rails_helper'

RSpec.describe "LicensePlates", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/license_plates/index"
      expect(response).to have_http_status(:success)
    end
  end

end
