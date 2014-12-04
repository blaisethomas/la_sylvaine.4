require 'rails_helper'

RSpec.describe "payments/index", :type => :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :user => nil
      ),
      Payment.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
