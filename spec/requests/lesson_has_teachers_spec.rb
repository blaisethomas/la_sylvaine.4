require 'rails_helper'

RSpec.describe "LessonHasTeachers", :type => :request do
  describe "GET /lesson_has_teachers" do
    it "works! (now write some real specs)" do
      get lesson_has_teachers_path
      expect(response).to have_http_status(200)
    end
  end
end
