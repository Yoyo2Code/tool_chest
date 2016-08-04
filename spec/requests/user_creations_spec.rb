require 'rails_helper'

RSpec.describe "UserCreations", type: :request do
  describe "GET /user_creations" do
    it "works! (now write some real specs)" do
      get user_creations_path
      expect(response).to have_http_status(200)
    end
  end
end
