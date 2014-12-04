require 'rails_helper'

RSpec.describe "pupil_has_lessons/show", :type => :view do
  before(:each) do
    @pupil_has_lesson = assign(:pupil_has_lesson, PupilHasLesson.create!(
      :pupil => nil,
      :lesson => nil,
      :payment => nil,
      :adjusted_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
  end
end
