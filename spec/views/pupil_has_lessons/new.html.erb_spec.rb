require 'rails_helper'

RSpec.describe "pupil_has_lessons/new", :type => :view do
  before(:each) do
    assign(:pupil_has_lesson, PupilHasLesson.new(
      :pupil => nil,
      :lesson => nil,
      :payment => nil,
      :adjusted_price => 1.5
    ))
  end

  it "renders new pupil_has_lesson form" do
    render

    assert_select "form[action=?][method=?]", pupil_has_lessons_path, "post" do

      assert_select "input#pupil_has_lesson_pupil_id[name=?]", "pupil_has_lesson[pupil_id]"

      assert_select "input#pupil_has_lesson_lesson_id[name=?]", "pupil_has_lesson[lesson_id]"

      assert_select "input#pupil_has_lesson_payment_id[name=?]", "pupil_has_lesson[payment_id]"

      assert_select "input#pupil_has_lesson_adjusted_price[name=?]", "pupil_has_lesson[adjusted_price]"
    end
  end
end
