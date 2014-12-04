require 'rails_helper'

RSpec.describe "lessons/show", :type => :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :location => nil,
      :price => 1.5,
      :genre => "Genre",
      :grade => "Grade"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Grade/)
  end
end
