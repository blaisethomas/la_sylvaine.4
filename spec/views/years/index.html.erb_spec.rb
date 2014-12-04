require 'rails_helper'

RSpec.describe "years/index", :type => :view do
  before(:each) do
    assign(:years, [
      Year.create!(
        :year => 1,
        :price => 1.5
      ),
      Year.create!(
        :year => 1,
        :price => 1.5
      )
    ])
  end

  it "renders a list of years" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
