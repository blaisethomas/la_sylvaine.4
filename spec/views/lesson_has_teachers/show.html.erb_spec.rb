require 'rails_helper'

RSpec.describe "lesson_has_teachers/show", :type => :view do
  before(:each) do
    @lesson_has_teacher = assign(:lesson_has_teacher, LessonHasTeacher.create!(
      :lesson => nil,
      :teacher => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
