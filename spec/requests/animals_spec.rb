require 'rails_helper'

RSpec.describe "Animals", type: :request do
  describe "GET /animals" do
    it "works! (now write some real specs)" do
      get animals_index_path
      expect(response).to have_http_status(200)
    end
  end
end
