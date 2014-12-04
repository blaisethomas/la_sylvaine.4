require 'rails_helper'

RSpec.describe "pupil_has_lessons/index", :type => :view do
  before(:each) do
    assign(:pupil_has_lessons, [
      PupilHasLesson.create!(
        :pupil => nil,
        :lesson => nil,
        :payment => nil,
        :adjusted_price => 1.5
      ),
      PupilHasLesson.create!(
        :pupil => nil,
        :lesson => nil,
        :payment => nil,
        :adjusted_price => 1.5
      )
    ])
  end

  it "renders a list of pupil_has_lessons" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
