require 'rails_helper'

RSpec.describe "lesson_has_teachers/new", :type => :view do
  before(:each) do
    assign(:lesson_has_teacher, LessonHasTeacher.new(
      :lesson => nil,
      :teacher => nil
    ))
  end

  it "renders new lesson_has_teacher form" do
    render

    assert_select "form[action=?][method=?]", lesson_has_teachers_path, "post" do

      assert_select "input#lesson_has_teacher_lesson_id[name=?]", "lesson_has_teacher[lesson_id]"

      assert_select "input#lesson_has_teacher_teacher_id[name=?]", "lesson_has_teacher[teacher_id]"
    end
  end
end
