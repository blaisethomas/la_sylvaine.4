require 'rails_helper'

RSpec.describe "lessons/edit", :type => :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :location => nil,
      :price => 1.5,
      :genre => "MyString",
      :grade => "MyString"
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input#lesson_location_id[name=?]", "lesson[location_id]"

      assert_select "input#lesson_price[name=?]", "lesson[price]"

      assert_select "input#lesson_genre[name=?]", "lesson[genre]"

      assert_select "input#lesson_grade[name=?]", "lesson[grade]"
    end
  end
end
