require 'rails_helper'

RSpec.describe "PupilHasLessons", :type => :request do
  describe "GET /pupil_has_lessons" do
    it "works! (now write some real specs)" do
      get pupil_has_lessons_path
      expect(response).to have_http_status(200)
    end
  end
end
