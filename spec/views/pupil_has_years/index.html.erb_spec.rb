require 'rails_helper'

RSpec.describe "pupil_has_years/index", :type => :view do
  before(:each) do
    assign(:pupil_has_years, [
      PupilHasYear.create!(
        :year => nil,
        :payment => nil,
        :pupil => nil,
        :adjusted_price => 1.5
      ),
      PupilHasYear.create!(
        :year => nil,
        :payment => nil,
        :pupil => nil,
        :adjusted_price => 1.5
      )
    ])
  end

  it "renders a list of pupil_has_years" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
