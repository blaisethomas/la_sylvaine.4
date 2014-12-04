require 'rails_helper'

RSpec.describe "years/edit", :type => :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :year => 1,
      :price => 1.5
    ))
  end

  it "renders the edit year form" do
    render

    assert_select "form[action=?][method=?]", year_path(@year), "post" do

      assert_select "input#year_year[name=?]", "year[year]"

      assert_select "input#year_price[name=?]", "year[price]"
    end
  end
end
