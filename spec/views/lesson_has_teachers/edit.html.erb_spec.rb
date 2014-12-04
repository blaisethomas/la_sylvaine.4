require 'rails_helper'

RSpec.describe "lesson_has_teachers/edit", :type => :view do
  before(:each) do
    @lesson_has_teacher = assign(:lesson_has_teacher, LessonHasTeacher.create!(
      :lesson => nil,
      :teacher => nil
    ))
  end

  it "renders the edit lesson_has_teacher form" do
    render

    assert_select "form[action=?][method=?]", lesson_has_teacher_path(@lesson_has_teacher), "post" do

      assert_select "input#lesson_has_teacher_lesson_id[name=?]", "lesson_has_teacher[lesson_id]"

      assert_select "input#lesson_has_teacher_teacher_id[name=?]", "lesson_has_teacher[teacher_id]"
    end
  end
end
