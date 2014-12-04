require 'rails_helper'

RSpec.describe "PupilHasYears", :type => :request do
  describe "GET /pupil_has_years" do
    it "works! (now write some real specs)" do
      get pupil_has_years_path
      expect(response).to have_http_status(200)
    end
  end
end
