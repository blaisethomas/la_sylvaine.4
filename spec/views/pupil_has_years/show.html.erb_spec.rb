require 'rails_helper'

RSpec.describe "pupil_has_years/show", :type => :view do
  before(:each) do
    @pupil_has_year = assign(:pupil_has_year, PupilHasYear.create!(
      :year => nil,
      :payment => nil,
      :pupil => nil,
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
