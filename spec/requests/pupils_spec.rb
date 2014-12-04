require 'rails_helper'

RSpec.describe "Pupils", :type => :request do
  describe "GET /pupils" do
    it "works! (now write some real specs)" do
      get pupils_path
      expect(response).to have_http_status(200)
    end
  end
end
