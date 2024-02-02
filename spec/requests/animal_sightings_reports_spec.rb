require 'rails_helper'

RSpec.describe "AnimalSightingsReports", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/animal_sightings_reports/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/animal_sightings_reports/index"
      expect(response).to have_http_status(:success)
    end
  end

end
