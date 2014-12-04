require 'rails_helper'

RSpec.describe "lessons/index", :type => :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        :location => nil,
        :price => 1.5,
        :genre => "Genre",
        :grade => "Grade"
      ),
      Lesson.create!(
        :location => nil,
        :price => 1.5,
        :genre => "Genre",
        :grade => "Grade"
      )
    ])
  end

  it "renders a list of lessons" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
  end
end
