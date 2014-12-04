require 'rails_helper'

RSpec.describe "lesson_has_teachers/index", :type => :view do
  before(:each) do
    assign(:lesson_has_teachers, [
      LessonHasTeacher.create!(
        :lesson => nil,
        :teacher => nil
      ),
      LessonHasTeacher.create!(
        :lesson => nil,
        :teacher => nil
      )
    ])
  end

  it "renders a list of lesson_has_teachers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
