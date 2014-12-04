require 'rails_helper'

RSpec.describe "pupil_has_years/new", :type => :view do
  before(:each) do
    assign(:pupil_has_year, PupilHasYear.new(
      :year => nil,
      :payment => nil,
      :pupil => nil,
      :adjusted_price => 1.5
    ))
  end

  it "renders new pupil_has_year form" do
    render

    assert_select "form[action=?][method=?]", pupil_has_years_path, "post" do

      assert_select "input#pupil_has_year_year_id[name=?]", "pupil_has_year[year_id]"

      assert_select "input#pupil_has_year_payment_id[name=?]", "pupil_has_year[payment_id]"

      assert_select "input#pupil_has_year_pupil_id[name=?]", "pupil_has_year[pupil_id]"

      assert_select "input#pupil_has_year_adjusted_price[name=?]", "pupil_has_year[adjusted_price]"
    end
  end
end
